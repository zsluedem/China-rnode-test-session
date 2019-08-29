import grpc
import sys
from rchain.crypto import PrivateKey
from rchain.client import RClient

from rchain.vault import VaultAPI

import argparse


def bond(amount, private_key, grpc_host, grpc_port):
    key = PrivateKey.from_hex(private_key)
    with grpc.insecure_channel('{}:{}'.format(grpc_host, grpc_port)) as channel:
        client = RClient(channel)

        alice_vault_api = VaultAPI(client, key)
        alice_vault_api.bond(amount=amount)

        print("Bonding process is done. Use check balance to ensure bonding is available.")

def check_balance(private_key, grpc_host, grpc_port):
    key = PrivateKey.from_hex(private_key)
    with grpc.insecure_channel('{}:{}'.format(grpc_host, grpc_port)) as channel:
        client = RClient(channel)
        vault_api = VaultAPI(client, key)
        balance = vault_api.get_balance()

        print("Current user {} have balance: {}".format(key.get_public_key().get_rev_address(), balance))

def transfer(to_addr, amount, private_key, grpc_host, grpc_port):
    key = PrivateKey.from_hex(private_key)
    with grpc.insecure_channel('{}:{}'.format(grpc_host, grpc_port)) as channel:
        client = RClient(channel)
        vault_api = VaultAPI(client, key)

        vault_api.transfer(None, to_addr, amount)

        print("Transfer process is done. Use check balance to ensure transfer is available.")

def run_cli(args: argparse.Namespace):
    if args.subcommand == "bond":
        bond(args.bond_amount, args.private_key, args.grpc_host, args.grpc_port)
    elif args.subcommand == "check-balance":
        check_balance(args.private_key, args.grpc_host, args.grpc_port)
    elif args.subcommand == "transfer":
        transfer(args.to_addr, args.amount,args.private_key, args.grpc_host, args.grpc_port )
    else:
        raise NotImplementedError()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(prog="RChain Cli")
    parser.add_argument("--grpc-host", type=str, default="127.0.0.1")
    parser.add_argument("--grpc-port", type=str, default="40401")

    subparsers = parser.add_subparsers(help="subcommand help", dest="subcommand")
    bond_parser = subparsers.add_parser("bond", help="bond command")
    bond_parser.add_argument("--bond-amount", type=int)
    bond_parser.add_argument("--private-key", type=str)


    check_balance_parser = subparsers.add_parser("check-balance", help="check balance of a vault")
    check_balance_parser.add_argument("--private-key")

    transfer_parser = subparsers.add_parser("transfer", help="transfer fund command")
    transfer_parser.add_argument("--to-addr")
    transfer_parser.add_argument("--amount")
    transfer_parser.add_argument("--private-key")

    args = parser.parse_args()
    run_cli(args)
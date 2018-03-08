cd ./libbitcoin-consensus
make;
rm libbitcoin-consensus.a;
ar q libbitcoin-consensus.a ./src/clone/.libs/*.o;
ar q libbitcoin-consensus.a ./src/clone/*/.libs/*.o;
ar q libbitcoin-consensus.a ./src/consensus/.libs/*.o;
cp ./libbitcoin-consensus.a ../;


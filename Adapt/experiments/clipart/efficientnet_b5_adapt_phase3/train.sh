cp ./experiments/clipart/efficientnet_b5/snapshot/* ./experiments/clipart/efficientnet_b5_adapt_phase3/snapshot
CUDA_VISIBLE_DEVICES=3,2,1,0 python3 -m torch.distributed.launch --nproc_per_node=4 main.py --folder ./experiments/clipart/efficientnet_b5_adapt_phase3 --resume 8

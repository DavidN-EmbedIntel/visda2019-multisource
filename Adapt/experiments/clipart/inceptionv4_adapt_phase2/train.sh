cp ./experiments/clipart/inceptionv4/snapshot/* ./experiments/clipart/inceptionv4_adapt_phase2/snapshot
CUDA_VISIBLE_DEVICES=3,2,1,0 python3 -m torch.distributed.launch --nproc_per_node=4 main.py --folder ./experiments/clipart/inceptionv4_adapt_phase2 --resume 4

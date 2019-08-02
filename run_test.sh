model=/data/share/zhanghaipeng/pytorch-pretrained-BERT/examples/model/bert-base-chinese
data_dir=/data/share/zhanghaipeng/data/zhijiang/
cuda=0
step=$1
CUDA_VISIBLE_DEVICES=$cuda python run_zhijiang.py \
	--data_dir $data_dir \
	--model_type bert \
	--model_name_or_path $model \
	--task_name zhijiang \
	--output_dir train/checkpoint-$step \
	--do_eval \
	--per_gpu_train_batch_size 32 \
	--num_train_epochs 20.0 \
	--save_steps 200
	

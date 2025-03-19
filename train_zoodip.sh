export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export DATA_DIR="./dataset/dog6"
export OUTPUT_DIR="./results/512_1e2"

python ./train_zoodip.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --train_data_dir=$DATA_DIR \
  --learnable_property="object" \
  --placeholder_token="sks" \
  --initializer_token="dog" \
  --resolution=512 \
  --train_batch_size=1 \
  --gradient_accumulation_steps=1 \
  --max_train_steps=30000 \
  --save_steps=5000 \
  --learning_rate=1e-2 \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --output_dir=$OUTPUT_DIR \
  --mixed_precision='fp16' \
  --seed=42 \
  --n=2 \
  --nu=1e-3 \
  --tau=128 \
  --use_cc
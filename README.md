# 🌟 [CVPR 2025] Efficient Personalization of Quantized Diffusion Model without Backpropagation

## 📑 Introduction

> **Efficient Personalization of Quantized Diffusion Model without Backpropagation**
>
> [Hoigi Seo*](https://seohoiki3215.github.io), [Wongi Jeong*](https://ignoww.github.io/), Kyungryeol Lee, [Se Young Chun](https://icl.snu.ac.kr/) (*co-first)
>
> 📚[arXiv](https://arxiv.org/abs/2411.07132)

This paper presents a novel approach to enabling personalization with a quantized text-to-image diffusion model while operating under minimal memory constraints and without reliance on backpropagation. Leveraging **zeroth-order(ZO) optimization**, the proposed method achieves personalization using merely **2.37GB** of VRAM on Stable Diffusion v1.5.

## 🚀 Usage

1. **Environment Setup**

   **Create and activate the Conda virtual environment:**

   ```bash
   conda env create -f environment.yaml
   conda activate zoodip
   ```
   Alternatively, install dependencies via `pip`:
    ```bash
    pip install -r requirements.txt
    ```

   Additionally, download dreambooth dataset from [here](https://github.com/google/dreambooth) and put them in `./dataset`:

2. **Configure Parameters**
packages/button
├── lib
│   ├── button.d.ts
│   ├── button.js
│   ├── button.js.map
│   ├── button.stories.d.ts
│   ├── button.stories.js
│   ├── button.stories.js.map
│   ├── index.d.ts
│   ├── index.js
│   └── index.js.map
├── package.json
├── src
│   ├── button.stories.tsx
│   ├── button.tsx
│   └── index.ts
└── tsconfig.json
   Modify the `configs/demo_config.py` file to adjust runtime parameters as needed. This file includes two example configuration classes: `RunConfig1` for object binding and `RunConfig2` for attribute binding. Key parameters are as follows:

   - `prompt`: Text prompt for guiding image generation.
   - `model_path`: Path to the Stable Diffusion model; set to `None` to download the pretrained model automatically.
   - `use_nlp`: Whether to use an NLP model for token parsing.
   - `token_indices`: Indices of tokens to merge.
   - `prompt_anchor`: Split text prompt.
   - `prompt_merged`: Text prompt after token merging.
   - For further parameter details, please refer to the comments in the configuration file and our paper.

3. **Run the Example**

   Execute the main script `run_demo.py`:

   ```bash
   python run_demo.py
   ```

   The generated images will be saved in the `demo` directory.

## 📸 Example Outputs

If everything is set up correctly, `RunConfig1` and `RunConfig2` should produce the left and right images below, respectively:

<img src="pics\demo.png" width="1000">

## ⚠️ Notes

- **Custom Configurations**: To use custom text prompts and parameters, add a new configuration class in `configs/demo_config.py` and make necessary adjustments in `run_demo.py`.
- **Parameter Sensitivity**: This method inherits the sensitivity of inference-based optimization techniques, meaning that the generated results are highly dependent on hyperparameter settings. Careful tuning may be required to achieve optimal results.
- **NLP Models**: When using NLP models like SpaCy for token parsing, ensure the correct language model is installed.

## 🙏 Acknowledgments

This code is based on the textual inversion implementation provided by Diffusers. The referenced works are as follows:

- [🤗 Diffusers](https://github.com/huggingface/diffusers)
- [Textual Inversion](https://arxiv.org/abs/2208.01618)

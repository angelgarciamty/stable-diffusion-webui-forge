from ldm_patched.modules.conds import CONDRegular, CONDCrossAttn


def cond_from_a1111_to_patched_ldm(cond):
    cross_attn = cond['crossattn']
    pooled_output = cond['vector']

    result = dict(
        cross_attn=cross_attn,
        pooled_output=pooled_output,
        model_conds=dict(
            c_crossattn=CONDCrossAttn(cross_attn),
            y=CONDRegular(pooled_output)
        )
    )

    return [result, ]

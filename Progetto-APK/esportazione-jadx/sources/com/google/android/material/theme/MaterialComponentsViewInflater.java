package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Keep;
import p039f.O;
import p086l.C3053t;
import p106n4.a;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class MaterialComponentsViewInflater extends O {
    @Override // p039f.O
    public C3053t createButton(Context context, AttributeSet attributeSet) {
        return new a(context, attributeSet);
    }
}

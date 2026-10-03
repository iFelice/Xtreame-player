package pe.hf.black20.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public class ORPlayerLinearLayoutManager extends LinearLayoutManager {
    public ORPlayerLinearLayoutManager(Context context, AttributeSet attributeSet, int i8, int i9) {
        super(context, attributeSet, i8, i9);
    }

    @Override // O1.L
    public final View g0(View view, int i8) {
        int i9 = this.f9594p;
        if (i9 == 0) {
            if (i8 == 66 && w(x() - 1) == view) {
                return view;
            }
            return null;
        }
        if (i9 == 1 && i8 == 130 && w(x() - 1) == view) {
            return view;
        }
        return null;
    }
}

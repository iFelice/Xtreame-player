package pe.hf.black20;

import O1.g0;
import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class ORPlayerSpeedyLinearLayoutManager extends LinearLayoutManager {
    public ORPlayerSpeedyLinearLayoutManager(Context context, AttributeSet attributeSet, int i8, int i9) {
        super(context, attributeSet, i8, i9);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final void Q0(RecyclerView recyclerView, int i8) {
        g0 g0Var = new g0(this, recyclerView.getContext(), 1);
        g0Var.f5537a = i8;
        R0(g0Var);
    }
}

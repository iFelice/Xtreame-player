package X5;

import F.i;
import O1.c0;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends c0 implements View.OnClickListener {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public V5.b f7688a0;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        V5.b bVar = this.f7688a0;
        if (bVar != null) {
            int iC = c();
            V5.a aVar = bVar.f7176J;
            i iVar = aVar.f7174b;
            W5.b bVarM = iVar.m(iC);
            if (((boolean[]) iVar.f2978I)[bVarM.f7495a]) {
                aVar.a(bVarM);
            } else {
                aVar.b(bVarM);
            }
        }
    }
}

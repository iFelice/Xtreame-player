package p105n3;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes.dex */
public final class n extends FrameLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ImageButton f27541G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final e f27542H;

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0060, code lost:
    
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public n(android.app.Activity r7, p072j0.c r8, p105n3.e r9) {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p105n3.n.<init>(android.app.Activity, j0.c, n3.e):void");
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e eVar = this.f27542H;
        if (eVar != null) {
            k kVar = (k) eVar;
            kVar.f27531c0 = 2;
            kVar.f27510H.finish();
        }
    }
}

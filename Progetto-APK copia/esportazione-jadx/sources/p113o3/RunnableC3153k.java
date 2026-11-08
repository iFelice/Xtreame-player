package p113o3;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import p083k3.l;

/* JADX INFO: renamed from: o3.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3153k implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Context f27973G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f27974H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ boolean f27975I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ boolean f27976J;

    public RunnableC3153k(Context context, String str, boolean z7, boolean z8) {
        this.f27973G = context;
        this.f27974H = str;
        this.f27975I = z7;
        this.f27976J = z8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        O o4 = l.f25980A.f25983c;
        AlertDialog.Builder builderI = O.i(this.f27973G);
        builderI.setMessage(this.f27974H);
        if (this.f27975I) {
            builderI.setTitle("Error");
        } else {
            builderI.setTitle("Info");
        }
        if (this.f27976J) {
            builderI.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builderI.setPositiveButton("Learn More", new DialogInterfaceOnClickListenerC3149g(this, 2));
            builderI.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builderI.create().show();
    }
}

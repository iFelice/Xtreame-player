package p113o3;

import android.content.DialogInterface;
import android.net.Uri;
import java.util.concurrent.atomic.AtomicInteger;
import p083k3.l;

/* JADX INFO: renamed from: o3.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC3149g implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27952G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f27953H;

    public /* synthetic */ DialogInterfaceOnClickListenerC3149g(Object obj, int i8) {
        this.f27952G = i8;
        this.f27953H = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        int i9 = this.f27952G;
        Object obj = this.f27953H;
        switch (i9) {
            case 0:
                ((AtomicInteger) obj).set(i8);
                break;
            case 1:
                ((C3151i) obj).b();
                break;
            case 2:
                O o4 = l.f25980A.f25983c;
                O.q(((RunnableC3153k) obj).f27973G, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
                break;
            default:
                dialogInterface.dismiss();
                break;
        }
    }
}

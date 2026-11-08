package p086l;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.widget.TextView;
import com.google.android.gms.internal.measurement.U1;
import p021c4.C0597l0;
import p021c4.InterfaceC0583g1;
import p021c4.T;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: loaded from: classes.dex */
public final class Y implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26209G = 2;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f26210H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f26211I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f26212J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f26213K;

    public /* synthetic */ Y(U1 u7, int i8, T t7, Intent intent) {
        this.f26211I = u7;
        this.f26210H = i8;
        this.f26212J = t7;
        this.f26213K = intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26209G;
        Object obj = this.f26213K;
        Object obj2 = this.f26212J;
        int i9 = this.f26210H;
        Object obj3 = this.f26211I;
        switch (i8) {
            case 0:
                ((TextView) obj3).setTypeface((Typeface) obj2, i9);
                break;
            case 1:
                T t7 = (T) obj2;
                Intent intent = (Intent) obj;
                Context context = ((U1) obj3).f23010G;
                InterfaceC0583g1 interfaceC0583g1 = (InterfaceC0583g1) context;
                if (interfaceC0583g1.C(i9)) {
                    t7.f11047T.b(Integer.valueOf(i9), "Local AppMeasurementService processed last upload request. StartId");
                    T t8 = C0597l0.q(context, null, null).f11258O;
                    C0597l0.k(t8);
                    t8.f11047T.a("Completed wakeful intent.");
                    interfaceC0583g1.a(intent);
                }
                break;
            default:
                PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) obj;
                playStreamEPGActivity.f28911f2.setSpuTrack(Integer.parseInt(((String[]) obj3)[i9]));
                playStreamEPGActivity.f28911f2.play();
                ((DialogInterface) obj2).dismiss();
                break;
        }
    }

    public Y(C3023d0 c3023d0, TextView textView, Typeface typeface, int i8) {
        this.f26213K = c3023d0;
        this.f26211I = textView;
        this.f26212J = typeface;
        this.f26210H = i8;
    }

    public Y(int i8, DialogInterface dialogInterface, PlayStreamEPGActivity playStreamEPGActivity, String[] strArr) {
        this.f26213K = playStreamEPGActivity;
        this.f26211I = strArr;
        this.f26210H = i8;
        this.f26212J = dialogInterface;
    }
}

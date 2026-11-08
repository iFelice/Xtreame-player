package p059h3;

import android.content.Context;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.C1448i6;
import com.google.android.gms.internal.ads.C2050to;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;
import p021c4.M0;
import p021c4.V;
import p043f3.f;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25402G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f25403H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f25404I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Serializable f25405J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f25406K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Object f25407L;

    public /* synthetic */ a(Context context, String str, f fVar, C2050to c2050to) {
        this.f25402G = 0;
        this.f25404I = context;
        this.f25405J = str;
        this.f25406K = fVar;
        this.f25403H = 1;
        this.f25407L = c2050to;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f25402G;
        Object obj = this.f25407L;
        Object obj2 = this.f25406K;
        Serializable serializable = this.f25405J;
        Object obj3 = this.f25404I;
        switch (i8) {
            case 0:
                Context context = (Context) obj3;
                try {
                    new C1448i6(context, (String) serializable, ((f) obj2).f25163a, this.f25403H, (C2050to) obj).c();
                } catch (IllegalStateException e8) {
                    C0667Bc.a(context).b("AppOpenAd.load", e8);
                    return;
                }
                break;
            default:
                V v5 = (V) obj3;
                ((M0) v5.f11060L).a(v5.f11058J, this.f25403H, (Exception) serializable, (byte[]) obj2, (Map) obj);
                break;
        }
    }

    public /* synthetic */ a(V v5, int i8, IOException iOException, byte[] bArr, Map map) {
        this.f25402G = 1;
        this.f25404I = v5;
        this.f25403H = i8;
        this.f25405J = iOException;
        this.f25406K = bArr;
        this.f25407L = map;
    }
}

package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.Handler;
import android.util.Pair;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class MK implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14696G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f14697H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f14698I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f14699J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f14700K;

    public /* synthetic */ MK(Object obj, Object obj2, Object obj3, Object obj4, int i8) {
        this.f14696G = i8;
        this.f14697H = obj;
        this.f14698I = obj2;
        this.f14699J = obj3;
        this.f14700K = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14696G) {
            case 0:
                Pair pair = (Pair) this.f14698I;
                ((C2032tL) ((QK) ((C0871Om) this.f14697H).f15197I).f16015h).f(((Integer) pair.first).intValue(), (C2190wN) pair.second, (C1827pN) this.f14699J, (C1721nL) this.f14700K);
                return;
            case 1:
                Pair pair2 = (Pair) this.f14698I;
                ((C2032tL) ((QK) ((C0871Om) this.f14697H).f15197I).f16015h).e(((Integer) pair2.first).intValue(), (C2190wN) pair2.second, (C1827pN) this.f14699J, (C1721nL) this.f14700K);
                return;
            case 2:
                Pair pair3 = (Pair) this.f14698I;
                ((C2032tL) ((QK) ((C0871Om) this.f14697H).f15197I).f16015h).h(((Integer) pair3.first).intValue(), (C2190wN) pair3.second, (C1827pN) this.f14699J, (C1721nL) this.f14700K);
                return;
            default:
                AudioTrack audioTrack = (AudioTrack) this.f14697H;
                C1722nM c1722nM = (C1722nM) this.f14698I;
                Handler handler = (Handler) this.f14699J;
                GH gh = (GH) this.f14700K;
                Object obj = C1618lM.f19732Z;
                int i8 = 21;
                try {
                    audioTrack.flush();
                    audioTrack.release();
                    if (c1722nM != null && handler.getLooper().getThread().isAlive()) {
                        handler.post(new RunnableC1170co(i8, c1722nM, gh));
                    }
                    synchronized (C1618lM.f19732Z) {
                        try {
                            int i9 = C1618lM.f19734b0 - 1;
                            C1618lM.f19734b0 = i9;
                            if (i9 == 0) {
                                C1618lM.f19733a0.shutdown();
                                C1618lM.f19733a0 = null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    return;
                } catch (Throwable th2) {
                    if (c1722nM != null && handler.getLooper().getThread().isAlive()) {
                        handler.post(new RunnableC1170co(i8, c1722nM, gh));
                    }
                    synchronized (C1618lM.f19732Z) {
                        try {
                            int i10 = C1618lM.f19734b0 - 1;
                            C1618lM.f19734b0 = i10;
                            if (i10 == 0) {
                                C1618lM.f19733a0.shutdown();
                                C1618lM.f19733a0 = null;
                            }
                            throw th2;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
        }
    }
}

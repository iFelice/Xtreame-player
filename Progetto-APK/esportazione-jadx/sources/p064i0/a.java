package p064i0;

import E1.A;
import E1.AbstractC0179n;
import E1.C0167b;
import E1.C0180o;
import E1.C0185u;
import E1.E;
import E1.X;
import K0.c;
import K0.d;
import android.content.Intent;
import android.media.MediaCodec;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.EM;
import com.google.android.gms.internal.ads.FM;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import p096m2.l;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f25496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f25497b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(C0167b c0167b) {
        super(Looper.getMainLooper());
        this.f25496a = 2;
        this.f25497b = c0167b;
    }

    private void a(Message message) {
        int size;
        l[] lVarArr;
        if (message.what != 1) {
            super.handleMessage(message);
            return;
        }
        c cVar = (c) this.f25497b;
        while (true) {
            synchronized (cVar.f25505b) {
                try {
                    size = cVar.f25507d.size();
                    if (size <= 0) {
                        return;
                    }
                    lVarArr = new l[size];
                    cVar.f25507d.toArray(lVarArr);
                    cVar.f25507d.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i8 = 0; i8 < size; i8++) {
                l lVar = lVarArr[i8];
                int size2 = ((ArrayList) lVar.f27232I).size();
                for (int i9 = 0; i9 < size2; i9++) {
                    b bVar = (b) ((ArrayList) lVar.f27232I).get(i9);
                    if (!bVar.f25501d) {
                        bVar.f25499b.onReceive(cVar.f25504a, (Intent) lVar.f27231H);
                    }
                }
            }
        }
    }

    private void b(Message message) {
        d dVar = (d) this.f25497b;
        ArrayDeque arrayDeque = d.f4321M;
        dVar.getClass();
        int i8 = message.what;
        c cVar = null;
        if (i8 == 1) {
            c cVar2 = (c) message.obj;
            try {
                dVar.f4323G.queueInputBuffer(cVar2.f4315a, cVar2.f4316b, cVar2.f4317c, cVar2.f4319e, cVar2.f4320f);
            } catch (RuntimeException e8) {
                AtomicReference atomicReference = dVar.f4326J;
                while (!atomicReference.compareAndSet(null, e8) && atomicReference.get() == null) {
                }
            }
            cVar = cVar2;
        } else if (i8 == 2) {
            c cVar3 = (c) message.obj;
            int i9 = cVar3.f4315a;
            int i10 = cVar3.f4316b;
            MediaCodec.CryptoInfo cryptoInfo = cVar3.f4318d;
            long j8 = cVar3.f4319e;
            int i11 = cVar3.f4320f;
            try {
                synchronized (d.f4322N) {
                    try {
                        dVar.f4323G.queueSecureInputBuffer(i9, i10, cryptoInfo, j8, i11);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (RuntimeException e9) {
                AtomicReference atomicReference2 = dVar.f4326J;
                while (!atomicReference2.compareAndSet(null, e9) && atomicReference2.get() == null) {
                }
            }
            cVar = cVar3;
        } else if (i8 == 3) {
            dVar.f4327K.f();
        } else if (i8 != 4) {
            AtomicReference atomicReference3 = dVar.f4326J;
            IllegalStateException illegalStateException = new IllegalStateException(String.valueOf(message.what));
            while (!atomicReference3.compareAndSet(null, illegalStateException) && atomicReference3.get() == null) {
            }
        } else {
            try {
                dVar.f4323G.setParameters((Bundle) message.obj);
            } catch (RuntimeException e10) {
                AtomicReference atomicReference4 = dVar.f4326J;
                while (!atomicReference4.compareAndSet(null, e10) && atomicReference4.get() == null) {
                }
            }
        }
        if (cVar != null) {
            d.c(cVar);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        em = null;
        em = null;
        em = null;
        EM em = null;
        switch (this.f25496a) {
            case 0:
                a(message);
                return;
            case 1:
                b(message);
                return;
            case 2:
                int i8 = message.what;
                int i9 = message.arg1;
                Object obj = message.obj;
                Bundle bundlePeekData = message.peekData();
                C0167b c0167b = (C0167b) this.f25497b;
                X x7 = (X) c0167b.f2710j.get(i9);
                if (x7 == null) {
                    Log.w("MR2Provider", "Pending callback not found for control request.");
                    return;
                }
                c0167b.f2710j.remove(i9);
                if (i8 == 3) {
                    x7.b((Bundle) obj);
                    return;
                } else {
                    if (i8 != 4) {
                        return;
                    }
                    X.a(bundlePeekData != null ? bundlePeekData.getString("error") : null, (Bundle) obj);
                    return;
                }
            case 3:
                int i10 = message.what;
                Object obj2 = this.f25497b;
                if (i10 != 1) {
                    if (i10 != 2) {
                        return;
                    }
                    AbstractC0179n abstractC0179n = (AbstractC0179n) obj2;
                    abstractC0179n.f2790f = false;
                    abstractC0179n.f(abstractC0179n.f2789e);
                    return;
                }
                AbstractC0179n abstractC0179n2 = (AbstractC0179n) obj2;
                abstractC0179n2.f2792h = false;
                C0185u c0185u = abstractC0179n2.f2788d;
                if (c0185u != null) {
                    C0180o c0180o = abstractC0179n2.f2791g;
                    A a8 = c0185u.f2806a;
                    E e8 = a8.e(abstractC0179n2);
                    if (e8 != null) {
                        a8.o(e8, c0180o);
                        return;
                    }
                    return;
                }
                return;
            default:
                FM fm = (FM) this.f25497b;
                ArrayDeque arrayDeque = FM.f13347M;
                int i11 = message.what;
                if (i11 != 1) {
                    if (i11 == 2) {
                        em = (EM) message.obj;
                        int i12 = em.f12969a;
                        MediaCodec.CryptoInfo cryptoInfo = em.f12971c;
                        long j8 = em.f12972d;
                        int i13 = em.f12973e;
                        try {
                            synchronized (FM.f13348N) {
                                fm.f13349G.queueSecureInputBuffer(i12, 0, cryptoInfo, j8, i13);
                            }
                        } catch (RuntimeException e9) {
                            Cw.d0(fm.f13352J, e9);
                        }
                    } else if (i11 == 3) {
                        fm.f13353K.e();
                    } else if (i11 != 4) {
                        Cw.d0(fm.f13352J, new IllegalStateException(String.valueOf(message.what)));
                    } else {
                        try {
                            fm.f13349G.setParameters((Bundle) message.obj);
                        } catch (RuntimeException e10) {
                            Cw.d0(fm.f13352J, e10);
                        }
                    }
                    break;
                } else {
                    em = (EM) message.obj;
                    try {
                        fm.f13349G.queueInputBuffer(em.f12969a, 0, em.f12970b, em.f12972d, em.f12973e);
                    } catch (RuntimeException e11) {
                        Cw.d0(fm.f13352J, e11);
                    }
                    break;
                }
                if (em != null) {
                    ArrayDeque arrayDeque2 = FM.f13347M;
                    synchronized (arrayDeque2) {
                        arrayDeque2.add(em);
                        break;
                    }
                    return;
                }
                return;
        }
    }

    public a(AbstractC0179n abstractC0179n) {
        this.f25496a = 3;
        this.f25497b = abstractC0179n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(Object obj, Looper looper, int i8) {
        super(looper);
        this.f25496a = i8;
        this.f25497b = obj;
    }
}

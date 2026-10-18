package G0;

import N.C0260i;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import java.util.Set;
import p117p0.M;
import z4.F;
import z4.H;

/* JADX INFO: renamed from: G0.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class HandlerC0201c extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f3308a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0201c(d dVar, Looper looper) {
        super(looper);
        this.f3308a = dVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Pair pair = (Pair) message.obj;
        Object obj = pair.first;
        Object obj2 = pair.second;
        int i8 = message.what;
        d dVar = this.f3308a;
        if (i8 == 1) {
            if (obj == dVar.f3333y) {
                if (dVar.f3324p == 2 || dVar.i()) {
                    dVar.f3333y = null;
                    boolean z7 = obj2 instanceof Exception;
                    p096m2.u uVar = dVar.f3311c;
                    if (z7) {
                        uVar.L((Exception) obj2, false);
                        return;
                    }
                    try {
                        dVar.f3310b.k((byte[]) obj2);
                        uVar.f27279I = null;
                        H hS = H.s((Set) uVar.f27278H);
                        ((Set) uVar.f27278H).clear();
                        F fListIterator = hS.listIterator(0);
                        while (fListIterator.hasNext()) {
                            d dVar2 = (d) fListIterator.next();
                            if (dVar2.l()) {
                                dVar2.h(true);
                            }
                        }
                        return;
                    } catch (Exception e8) {
                        uVar.L(e8, true);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (i8 == 2 && obj == dVar.f3332x && dVar.i()) {
            dVar.f3332x = null;
            if ((obj2 instanceof Exception) || (obj2 instanceof NoSuchMethodError)) {
                dVar.k(false, (Throwable) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                w wVar = dVar.f3310b;
                int i9 = dVar.f3313e;
                if (i9 == 3) {
                    byte[] bArr2 = dVar.f3331w;
                    String str = M.f28050a;
                    wVar.j(bArr2, bArr);
                    dVar.g(new C0260i(10));
                    return;
                }
                byte[] bArrJ = wVar.j(dVar.f3330v, bArr);
                if ((i9 == 2 || (i9 == 0 && dVar.f3331w != null)) && bArrJ != null && bArrJ.length != 0) {
                    dVar.f3331w = bArrJ;
                }
                dVar.f3324p = 4;
                dVar.g(new C0260i(11));
            } catch (Exception e9) {
                e = e9;
                dVar.k(true, e);
            } catch (NoSuchMethodError e10) {
                e = e10;
                dVar.k(true, e);
            }
        }
    }
}

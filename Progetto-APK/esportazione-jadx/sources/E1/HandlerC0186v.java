package E1;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: E1.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class HandlerC0186v extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2807a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f2808b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ A f2809c;

    public HandlerC0186v(A a8) {
        this.f2809c = a8;
    }

    public static void a(r rVar, int i8, Object obj, int i9) {
        A aC;
        Q q7;
        H h8 = rVar.f2798a;
        int i10 = 65280 & i8;
        AbstractC0182q abstractC0182q = rVar.f2799b;
        if (i10 != 256) {
            if (i10 != 512) {
                if (i10 == 768 && i8 == 769) {
                    abstractC0182q.getClass();
                    return;
                }
                return;
            }
            switch (i8) {
                case 513:
                    abstractC0182q.getClass();
                    break;
                case IMediaList.Event.ItemDeleted /* 514 */:
                    abstractC0182q.getClass();
                    break;
                case 515:
                    abstractC0182q.getClass();
                    break;
            }
        }
        F f8 = (i8 == 264 || i8 == 262) ? (F) ((M.b) obj).f4733b : (F) obj;
        F f9 = (i8 == 264 || i8 == 262) ? (F) ((M.b) obj).f4732a : null;
        if (f8 != null) {
            if ((rVar.f2801d & 2) != 0 || f8.e(rVar.f2800c) || ((aC = H.c()) != null && (q7 = aC.f2600q) != null && q7.f2666c && f8.c() && i8 == 262 && i9 == 3 && f9 != null && (!f9.c()))) {
                switch (i8) {
                    case 257:
                        abstractC0182q.a(f8);
                        break;
                    case MediaPlayer.Event.Opening /* 258 */:
                        abstractC0182q.c(f8);
                        break;
                    case MediaPlayer.Event.Buffering /* 259 */:
                        abstractC0182q.b(f8);
                        break;
                    case MediaPlayer.Event.Playing /* 260 */:
                        abstractC0182q.getClass();
                        break;
                    case MediaPlayer.Event.Paused /* 261 */:
                        abstractC0182q.getClass();
                        break;
                    case MediaPlayer.Event.Stopped /* 262 */:
                        abstractC0182q.d(h8, f8, i9);
                        break;
                    case 263:
                        abstractC0182q.e(f8, i9);
                        break;
                    case 264:
                        abstractC0182q.d(h8, f8, i9);
                        break;
                }
            }
        }
    }

    public final void b(int i8, Object obj) {
        obtainMessage(i8, obj).sendToTarget();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int iL;
        ArrayList arrayList = this.f2807a;
        int i8 = message.what;
        Object obj = message.obj;
        int i9 = message.arg1;
        A a8 = this.f2809c;
        if (i8 == 259 && a8.f().f2629c.equals(((F) obj).f2629c)) {
            a8.q(true);
        }
        ArrayList arrayList2 = this.f2808b;
        if (i8 == 262) {
            F f8 = (F) ((M.b) obj).f4733b;
            a8.f2586c.r(f8);
            if (a8.f2601r != null && f8.c()) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    a8.f2586c.q((F) it.next());
                }
                arrayList2.clear();
            }
        } else if (i8 != 264) {
            switch (i8) {
                case 257:
                    a8.f2586c.p((F) obj);
                    break;
                case MediaPlayer.Event.Opening /* 258 */:
                    a8.f2586c.q((F) obj);
                    break;
                case MediaPlayer.Event.Buffering /* 259 */:
                    o0 o0Var = a8.f2586c;
                    F f9 = (F) obj;
                    o0Var.getClass();
                    if (f9.a() != o0Var && (iL = o0Var.l(f9)) >= 0) {
                        o0Var.w((l0) o0Var.f2784r.get(iL));
                    }
                    break;
            }
        } else {
            F f10 = (F) ((M.b) obj).f4733b;
            arrayList2.add(f10);
            a8.f2586c.p(f10);
            a8.f2586c.r(f10);
        }
        try {
            int size = a8.f2590g.size();
            while (true) {
                size--;
                if (size < 0) {
                    int size2 = arrayList.size();
                    for (int i10 = 0; i10 < size2; i10++) {
                        a((r) arrayList.get(i10), i8, obj, i9);
                    }
                    return;
                }
                ArrayList arrayList3 = a8.f2590g;
                H h8 = (H) ((WeakReference) arrayList3.get(size)).get();
                if (h8 == null) {
                    arrayList3.remove(size);
                } else {
                    arrayList.addAll(h8.f2651b);
                }
            }
        } finally {
            arrayList.clear();
        }
    }
}

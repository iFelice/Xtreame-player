package E1;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import p039f.HandlerC2993h;

/* JADX INFO: loaded from: classes.dex */
public final class U implements IBinder.DeathRecipient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Messenger f2671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerC2993h f2672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Messenger f2673c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2676f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2677g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ a0 f2679i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2674d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2675e = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SparseArray f2678h = new SparseArray();

    public U(a0 a0Var, Messenger messenger) {
        this.f2679i = a0Var;
        this.f2671a = messenger;
        HandlerC2993h handlerC2993h = new HandlerC2993h(this);
        this.f2672b = handlerC2993h;
        this.f2673c = new Messenger(handlerC2993h);
    }

    public final void a(int i8) {
        int i9 = this.f2674d;
        this.f2674d = i9 + 1;
        b(5, i9, i8, null, null);
    }

    public final boolean b(int i8, int i9, int i10, Bundle bundle, Bundle bundle2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i8;
        messageObtain.arg1 = i9;
        messageObtain.arg2 = i10;
        messageObtain.obj = bundle;
        messageObtain.setData(bundle2);
        messageObtain.replyTo = this.f2673c;
        try {
            this.f2671a.send(messageObtain);
            return true;
        } catch (DeadObjectException unused) {
            return false;
        } catch (RemoteException e8) {
            if (i8 == 2) {
                return false;
            }
            Log.e("MediaRouteProviderProxy", "Could not send message to service.", e8);
            return false;
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.f2679i.f2699j.post(new T(this, 1));
    }

    public final void c(int i8, int i9) {
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i9);
        int i10 = this.f2674d;
        this.f2674d = i10 + 1;
        b(7, i10, i8, null, bundle);
    }

    public final void d(int i8, int i9) {
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i9);
        int i10 = this.f2674d;
        this.f2674d = i10 + 1;
        b(8, i10, i8, null, bundle);
    }
}

package E1;

import android.media.MediaRouter2;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: renamed from: E1.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0168c extends AbstractC0178m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0167b f2717b;

    public C0168c(String str, C0167b c0167b) {
        this.f2716a = str;
        this.f2717b = c0167b;
    }

    @Override // E1.AbstractC0178m
    public final void f(int i8) {
        C0167b c0167b;
        MediaRouter2.RoutingController routingController;
        Messenger messenger;
        String str = this.f2716a;
        if (str == null || (c0167b = this.f2717b) == null || (routingController = c0167b.f2707g) == null || routingController.isReleased() || (messenger = c0167b.f2708h) == null) {
            return;
        }
        int andIncrement = c0167b.f2712l.getAndIncrement();
        Message messageObtain = Message.obtain();
        messageObtain.what = 7;
        messageObtain.arg1 = andIncrement;
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i8);
        bundle.putString("routeId", str);
        messageObtain.setData(bundle);
        messageObtain.replyTo = c0167b.f2709i;
        try {
            messenger.send(messageObtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e8) {
            Log.e("MR2Provider", "Could not send control request to service.", e8);
        }
    }

    @Override // E1.AbstractC0178m
    public final void i(int i8) {
        C0167b c0167b;
        MediaRouter2.RoutingController routingController;
        Messenger messenger;
        String str = this.f2716a;
        if (str == null || (c0167b = this.f2717b) == null || (routingController = c0167b.f2707g) == null || routingController.isReleased() || (messenger = c0167b.f2708h) == null) {
            return;
        }
        int andIncrement = c0167b.f2712l.getAndIncrement();
        Message messageObtain = Message.obtain();
        messageObtain.what = 8;
        messageObtain.arg1 = andIncrement;
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i8);
        bundle.putString("routeId", str);
        messageObtain.setData(bundle);
        messageObtain.replyTo = c0167b.f2709i;
        try {
            messenger.send(messageObtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e8) {
            Log.e("MR2Provider", "Could not send control request to service.", e8);
        }
    }
}

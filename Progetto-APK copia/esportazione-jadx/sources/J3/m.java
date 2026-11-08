package J3;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class m extends X3.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f4158b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(e eVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper(), 0);
        this.f4158b = eVar;
        this.f4157a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        PendingIntent activity;
        int i8 = message.what;
        if (i8 != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i8);
            return;
        }
        int i9 = f.f4144a;
        e eVar = this.f4158b;
        Context context = this.f4157a;
        int iC = eVar.c(context, i9);
        AtomicBoolean atomicBoolean = j.f4147a;
        if (iC == 1 || iC == 2 || iC == 3 || iC == 9) {
            Intent intentB = eVar.b(iC, context, "n");
            if (intentB == null) {
                activity = null;
            } else {
                activity = PendingIntent.getActivity(context, 0, intentB, Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728);
            }
            eVar.h(context, iC, activity);
        }
    }
}

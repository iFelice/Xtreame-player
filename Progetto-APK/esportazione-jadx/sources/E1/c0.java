package E1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 {
    public static void a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Handler handler, int i8) {
        context.registerReceiver(broadcastReceiver, intentFilter, null, handler, i8);
    }
}

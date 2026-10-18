package B3;

import android.content.Context;
import android.content.SharedPreferences;
import com.bumptech.glide.c;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ReentrantLock f1209c = new ReentrantLock();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static a f1210d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantLock f1211a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f1212b;

    public a(Context context) {
        this.f1212b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static a a(Context context) {
        c.h(context);
        ReentrantLock reentrantLock = f1209c;
        reentrantLock.lock();
        try {
            if (f1210d == null) {
                f1210d = new a(context.getApplicationContext());
            }
            return f1210d;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final String b(String str) {
        ReentrantLock reentrantLock = this.f1211a;
        reentrantLock.lock();
        try {
            return this.f1212b.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }
}

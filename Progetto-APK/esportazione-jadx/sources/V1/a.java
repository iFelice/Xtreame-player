package V1;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashMap f7082e = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f7083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f7084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lock f7085c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public FileChannel f7086d;

    public a(String str, File file, boolean z7) {
        Lock lock;
        this.f7083a = z7;
        File file2 = new File(file, str.concat(".lck"));
        this.f7084b = file2;
        String absolutePath = file2.getAbsolutePath();
        q0.g(absolutePath, "lockFile.absolutePath");
        HashMap map = f7082e;
        synchronized (map) {
            try {
                Object reentrantLock = map.get(absolutePath);
                if (reentrantLock == null) {
                    reentrantLock = new ReentrantLock();
                    map.put(absolutePath, reentrantLock);
                }
                lock = (Lock) reentrantLock;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f7085c = lock;
    }

    public final void a(boolean z7) {
        this.f7085c.lock();
        if (z7) {
            File file = this.f7084b;
            try {
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(file).getChannel();
                channel.lock();
                this.f7086d = channel;
            } catch (IOException e8) {
                this.f7086d = null;
                Log.w("SupportSQLiteLock", "Unable to grab file lock.", e8);
            }
        }
    }

    public final void b() {
        try {
            FileChannel fileChannel = this.f7086d;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.f7085c.unlock();
    }
}

package p196z2;

import U1.f;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class i implements d {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final Bitmap.Config f31772P = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final j f31773G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Set f31774H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final f f31775I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f31776J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f31777K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f31778L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f31779M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f31780N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f31781O;

    public i(long j8) {
        n nVar = new n();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i8 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i8 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f31776J = j8;
        this.f31773G = nVar;
        this.f31774H = setUnmodifiableSet;
        this.f31775I = new f(18, null);
    }

    @Override // p196z2.d
    public final void G(int i8) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i8);
        }
        if (i8 >= 40 || (Build.VERSION.SDK_INT >= 23 && i8 >= 20)) {
            K();
        } else if (i8 >= 20 || i8 == 15) {
            e(this.f31776J / 2);
        }
    }

    @Override // p196z2.d
    public final void K() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        e(0L);
    }

    @Override // p196z2.d
    public final synchronized void a(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.f31773G.f(bitmap) <= this.f31776J && this.f31774H.contains(bitmap.getConfig())) {
                int iF = this.f31773G.f(bitmap);
                this.f31773G.a(bitmap);
                this.f31775I.getClass();
                this.f31780N++;
                this.f31777K += (long) iF;
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f31773G.g(bitmap));
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    b();
                }
                e(this.f31776J);
                return;
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f31773G.g(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f31774H.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b() {
        Log.v("LruBitmapPool", "Hits=" + this.f31778L + ", misses=" + this.f31779M + ", puts=" + this.f31780N + ", evictions=" + this.f31781O + ", currentSize=" + this.f31777K + ", maxSize=" + this.f31776J + "\nStrategy=" + this.f31773G);
    }

    @Override // p196z2.d
    public final Bitmap c(int i8, int i9, Bitmap.Config config) {
        Bitmap bitmapD = d(i8, i9, config);
        if (bitmapD != null) {
            bitmapD.eraseColor(0);
            return bitmapD;
        }
        if (config == null) {
            config = f31772P;
        }
        return Bitmap.createBitmap(i8, i9, config);
    }

    public final synchronized Bitmap d(int i8, int i9, Bitmap.Config config) {
        Bitmap bitmapC;
        try {
            if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            bitmapC = this.f31773G.c(i8, i9, config != null ? config : f31772P);
            if (bitmapC == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Missing bitmap=" + this.f31773G.e(i8, i9, config));
                }
                this.f31779M++;
            } else {
                this.f31778L++;
                this.f31777K -= (long) this.f31773G.f(bitmapC);
                this.f31775I.getClass();
                bitmapC.setHasAlpha(true);
                bitmapC.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Get bitmap=" + this.f31773G.e(i8, i9, config));
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return bitmapC;
    }

    public final synchronized void e(long j8) {
        while (this.f31777K > j8) {
            try {
                Bitmap bitmapRemoveLast = this.f31773G.removeLast();
                if (bitmapRemoveLast == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        b();
                    }
                    this.f31777K = 0L;
                    return;
                }
                this.f31775I.getClass();
                this.f31777K -= (long) this.f31773G.f(bitmapRemoveLast);
                this.f31781O++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Evicting bitmap=" + this.f31773G.g(bitmapRemoveLast));
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    b();
                }
                bitmapRemoveLast.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p196z2.d
    public final Bitmap j(int i8, int i9, Bitmap.Config config) {
        Bitmap bitmapD = d(i8, i9, config);
        if (bitmapD != null) {
            return bitmapD;
        }
        if (config == null) {
            config = f31772P;
        }
        return Bitmap.createBitmap(i8, i9, config);
    }
}

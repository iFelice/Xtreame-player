package p196z2;

import F.i;
import P2.o;
import android.graphics.Bitmap;
import android.os.Build;
import com.google.protobuf.U2;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Queue;
import java.util.TreeMap;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class n implements j {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Bitmap.Config[] f31786J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Bitmap.Config[] f31787K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Bitmap.Config[] f31788L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Bitmap.Config[] f31789M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Bitmap.Config[] f31790N;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final c f31791G = new c(2);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final i f31792H = new i(8);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final HashMap f31793I = new HashMap();

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f31786J = configArr;
        f31787K = configArr;
        f31788L = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f31789M = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f31790N = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String d(int i8, Bitmap.Config config) {
        return "[" + i8 + "](" + config + ")";
    }

    @Override // p196z2.j
    public final void a(Bitmap bitmap) {
        int iC = o.c(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        c cVar = this.f31791G;
        k kVarN = (k) ((Queue) cVar.f10616G).poll();
        if (kVarN == null) {
            kVarN = cVar.n();
        }
        m mVar = (m) kVarN;
        mVar.f31784b = iC;
        mVar.f31785c = config;
        this.f31792H.w(mVar, bitmap);
        NavigableMap navigableMapH = h(bitmap.getConfig());
        Integer num = (Integer) navigableMapH.get(Integer.valueOf(mVar.f31784b));
        navigableMapH.put(Integer.valueOf(mVar.f31784b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final void b(Integer num, Bitmap bitmap) {
        NavigableMap navigableMapH = h(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapH.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapH.remove(num);
                return;
            } else {
                navigableMapH.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + d(o.c(bitmap), bitmap.getConfig()) + ", this: " + this);
    }

    @Override // p196z2.j
    public final Bitmap c(int i8, int i9, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int iD = o.d(config) * i8 * i9;
        c cVar = this.f31791G;
        k kVarN = (k) ((Queue) cVar.f10616G).poll();
        if (kVarN == null) {
            kVarN = cVar.n();
        }
        m mVar = (m) kVarN;
        mVar.f31784b = iD;
        mVar.f31785c = config;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int i10 = l.f31782a[config.ordinal()];
            if (i10 == 1) {
                configArr = f31786J;
            } else if (i10 == 2) {
                configArr = f31788L;
            } else if (i10 != 3) {
                configArr = i10 != 4 ? new Bitmap.Config[]{config} : f31790N;
            } else {
                configArr = f31789M;
            }
        } else {
            configArr = f31787K;
        }
        for (Bitmap.Config config2 : configArr) {
            Integer num = (Integer) h(config2).ceilingKey(Integer.valueOf(iD));
            if (num != null && num.intValue() <= iD * 8) {
                if (num.intValue() == iD && (config2 != null ? config2.equals(config) : config == null)) {
                    break;
                    break;
                }
                cVar.k(mVar);
                int iIntValue = num.intValue();
                k kVarN2 = (k) ((Queue) cVar.f10616G).poll();
                if (kVarN2 == null) {
                    kVarN2 = cVar.n();
                }
                mVar = (m) kVarN2;
                mVar.f31784b = iIntValue;
                mVar.f31785c = config2;
                break;
            }
        }
        Bitmap bitmap = (Bitmap) this.f31792H.g(mVar);
        if (bitmap != null) {
            b(Integer.valueOf(mVar.f31784b), bitmap);
            bitmap.reconfigure(i8, i9, config);
        }
        return bitmap;
    }

    @Override // p196z2.j
    public final String e(int i8, int i9, Bitmap.Config config) {
        return d(o.d(config) * i8 * i9, config);
    }

    @Override // p196z2.j
    public final int f(Bitmap bitmap) {
        return o.c(bitmap);
    }

    @Override // p196z2.j
    public final String g(Bitmap bitmap) {
        return d(o.c(bitmap), bitmap.getConfig());
    }

    public final NavigableMap h(Bitmap.Config config) {
        HashMap map = this.f31793I;
        NavigableMap navigableMap = (NavigableMap) map.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(config, treeMap);
        return treeMap;
    }

    @Override // p196z2.j
    public final Bitmap removeLast() {
        Bitmap bitmap = (Bitmap) this.f31792H.x();
        if (bitmap != null) {
            b(Integer.valueOf(o.c(bitmap)), bitmap);
        }
        return bitmap;
    }

    public final String toString() {
        StringBuilder sbO = U2.o("SizeConfigStrategy{groupedMap=");
        sbO.append(this.f31792H);
        sbO.append(", sortedSizes=(");
        HashMap map = this.f31793I;
        for (Map.Entry entry : map.entrySet()) {
            sbO.append(entry.getKey());
            sbO.append('[');
            sbO.append(entry.getValue());
            sbO.append("], ");
        }
        if (!map.isEmpty()) {
            sbO.replace(sbO.length() - 2, sbO.length(), HttpUrl.FRAGMENT_ENCODE_SET);
        }
        sbO.append(")}");
        return sbO.toString();
    }
}

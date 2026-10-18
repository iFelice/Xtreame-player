package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class EL {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EL f12964c = new EL(AbstractC2073uA.w(DL.f12813d));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final PA f12965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final UA f12966e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f12967a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12968b;

    static {
        Object[] objArr = {2, 5, 6};
        Cw.O0(objArr, 3);
        f12965d = AbstractC2073uA.s(3, objArr);
        C1294f8 c1294f8 = new C1294f8(5, 0);
        c1294f8.a(5, 6);
        c1294f8.a(17, 6);
        c1294f8.a(7, 6);
        c1294f8.a(30, 10);
        c1294f8.a(18, 6);
        c1294f8.a(6, 8);
        c1294f8.a(8, 8);
        c1294f8.a(14, 8);
        f12966e = c1294f8.f();
    }

    public EL(PA pa) {
        for (int i8 = 0; i8 < pa.f15342J; i8++) {
            DL dl = (DL) pa.get(i8);
            this.f12967a.put(dl.f12814a, dl);
        }
        int iMax = 0;
        for (int i9 = 0; i9 < this.f12967a.size(); i9++) {
            iMax = Math.max(iMax, ((DL) this.f12967a.valueAt(i9)).f12815b);
        }
        this.f12968b = iMax;
    }

    public static EL b(Context context, C1097bH c1097bH, IL il) {
        return c(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), c1097bH, il);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00af  */
    public static EL c(Context context, Intent intent, C1097bH c1097bH, IL il) {
        Object systemService = context.getSystemService("audio");
        systemService.getClass();
        AudioManager audioManager = (AudioManager) systemService;
        if (il == null) {
            il = Et.f13234a >= 33 ? CL.b(audioManager, c1097bH) : null;
        }
        int i8 = Et.f13234a;
        if (i8 >= 33 && (Et.e(context) || (i8 >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")))) {
            return CL.a(audioManager, c1097bH);
        }
        if (i8 >= 23 && AL.a(audioManager, il)) {
            return f12964c;
        }
        C2281yA c2281yA = new C2281yA();
        c2281yA.h(2);
        if (i8 >= 29 && (Et.e(context) || (i8 >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")))) {
            c2281yA.i(BL.b(c1097bH));
            return new EL(d(Cw.P1(c2281yA.j()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z7 = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if (!z7) {
            String str = Et.f13236c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                if (Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
                    c2281yA.i(f12965d);
                }
            }
        } else if (Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            c2281yA.i(f12965d);
        }
        if (intent == null || z7 || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new EL(d(Cw.P1(c2281yA.j()), 10));
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            c2281yA.i(Cw.J1(intArrayExtra));
        }
        return new EL(d(Cw.P1(c2281yA.j()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
    }

    public static PA d(int[] iArr, int i8) {
        p113o3.r.q(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i9 = 0;
        int i10 = 0;
        while (i9 < iArr.length) {
            DL dl = new DL(iArr[i9], i8);
            int i11 = i10 + 1;
            int length = objArrCopyOf.length;
            if (length < i11) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.e(length, i11));
            }
            objArrCopyOf[i10] = dl;
            i9++;
            i10 = i11;
        }
        return AbstractC2073uA.s(i10, objArrCopyOf);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0030  */
    /* JADX WARN: Code duplicated, block: B:14:0x0036  */
    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    /* JADX WARN: Code duplicated, block: B:16:0x003b A[PHI: r0
      0x003b: PHI (r0v3 int) = (r0v2 int), (r0v6 int) binds: [B:11:0x002e, B:14:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:18:0x003f  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d1  */
    public final Pair a(C1804p0 c1804p0, C1097bH c1097bH) {
        String str = c1804p0.f20383m;
        str.getClass();
        int iA = AbstractC2140va.a(str, c1804p0.f20380j);
        Integer numValueOf = Integer.valueOf(iA);
        UA ua = f12966e;
        if (!ua.containsKey(numValueOf)) {
            return null;
        }
        SparseArray sparseArray = this.f12967a;
        int i8 = 8;
        if (iA != 18) {
            if (iA != 8) {
                if (iA == 30 && sparseArray.indexOfKey(30) < 0) {
                    iA = 7;
                }
            } else if (sparseArray.indexOfKey(8) >= 0) {
                iA = 8;
                if (iA == 30) {
                    iA = 7;
                }
            } else {
                iA = 7;
            }
        } else if (sparseArray.indexOfKey(18) >= 0) {
            iA = 18;
            if (iA != 8) {
                if (iA == 30) {
                    iA = 7;
                }
            } else if (sparseArray.indexOfKey(8) >= 0) {
                iA = 8;
                if (iA == 30) {
                    iA = 7;
                }
            } else {
                iA = 7;
            }
        } else {
            iA = 6;
        }
        if (sparseArray.indexOfKey(iA) < 0) {
            return null;
        }
        DL dl = (DL) sparseArray.get(iA);
        dl.getClass();
        int iIntValue = dl.f12815b;
        AbstractC2333zA abstractC2333zA = dl.f12816c;
        int i9 = c1804p0.f20362A;
        if (i9 == -1 || iA == 18) {
            int i10 = c1804p0.f20363B;
            if (i10 == -1) {
                i10 = 48000;
            }
            if (abstractC2333zA == null) {
                int i11 = Et.f13234a;
                int i12 = dl.f12814a;
                if (i11 >= 29) {
                    iIntValue = BL.a(i12, i10, c1097bH);
                } else {
                    Object obj = ua.get(Integer.valueOf(i12));
                    iIntValue = ((Integer) (obj != null ? obj : 0)).intValue();
                }
            }
            i9 = iIntValue;
        } else if (!c1804p0.f20383m.equals("audio/vnd.dts.uhd;profile=p2") || Et.f13234a >= 33) {
            if (abstractC2333zA != null) {
                int iN = Et.n(i9);
                if (iN == 0 || !abstractC2333zA.contains(Integer.valueOf(iN))) {
                    return null;
                }
            } else if (i9 > iIntValue) {
                return null;
            }
        } else if (i9 > 10) {
            return null;
        }
        int i13 = Et.f13234a;
        if (i13 > 28) {
            i8 = i9;
        } else if (i9 != 7) {
            if (i9 == 3 || i9 == 4 || i9 == 5) {
                i8 = 6;
            } else {
                i8 = i9;
            }
        }
        if (i13 <= 26 && "fugu".equals(Et.f13235b) && i8 == 1) {
            i8 = 2;
        }
        int iN2 = Et.n(i8);
        if (iN2 != 0) {
            return Pair.create(Integer.valueOf(iA), Integer.valueOf(iN2));
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0045 A[RETURN] */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EL)) {
            return false;
        }
        EL el = (EL) obj;
        SparseArray sparseArray = this.f12967a;
        SparseArray sparseArray2 = el.f12967a;
        if (Et.f13234a < 31) {
            int size = sparseArray.size();
            if (size == sparseArray2.size()) {
                for (int i8 = 0; i8 < size; i8++) {
                    if (Objects.equals(sparseArray.valueAt(i8), sparseArray2.get(sparseArray.keyAt(i8)))) {
                    }
                }
                if (this.f12968b == el.f12968b) {
                    return true;
                }
            }
        } else if (sparseArray.contentEquals(sparseArray2)) {
            if (this.f12968b == el.f12968b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iContentHashCode;
        int i8 = Et.f13234a;
        SparseArray sparseArray = this.f12967a;
        if (i8 >= 31) {
            iContentHashCode = sparseArray.contentHashCode();
        } else {
            int iHashCode = 17;
            for (int i9 = 0; i9 < sparseArray.size(); i9++) {
                iHashCode = Objects.hashCode(sparseArray.valueAt(i9)) + ((sparseArray.keyAt(i9) + (iHashCode * 31)) * 31);
            }
            iContentHashCode = iHashCode;
        }
        return (iContentHashCode * 31) + this.f12968b;
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f12968b + ", audioProfiles=" + this.f12967a.toString() + "]";
    }
}

package P1;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class z implements T1.h, T1.g {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final TreeMap f5869O = new TreeMap();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f5870G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile String f5871H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long[] f5872I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final double[] f5873J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String[] f5874K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final byte[][] f5875L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int[] f5876M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f5877N;

    public z(int i8) {
        this.f5870G = i8;
        int i9 = i8 + 1;
        this.f5876M = new int[i9];
        this.f5872I = new long[i9];
        this.f5873J = new double[i9];
        this.f5874K = new String[i9];
        this.f5875L = new byte[i9][];
    }

    public static final z N(int i8, String str) {
        TreeMap treeMap = f5869O;
        synchronized (treeMap) {
            Map.Entry entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i8));
            if (entryCeilingEntry == null) {
                z zVar = new z(i8);
                zVar.f5871H = str;
                zVar.f5877N = i8;
                return zVar;
            }
            treeMap.remove(entryCeilingEntry.getKey());
            z zVar2 = (z) entryCeilingEntry.getValue();
            zVar2.f5871H = str;
            zVar2.f5877N = i8;
            return zVar2;
        }
    }

    @Override // T1.g
    public final void A(int i8, byte[] bArr) {
        this.f5876M[i8] = 5;
        this.f5875L[i8] = bArr;
    }

    @Override // T1.h
    public final String E() {
        String str = this.f5871H;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @Override // T1.g
    public final void J(int i8) {
        this.f5876M[i8] = 1;
    }

    public final void O() {
        TreeMap treeMap = f5869O;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f5870G), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator it = treeMap.descendingKeySet().iterator();
                q0.g(it, "queryPool.descendingKeySet().iterator()");
                while (true) {
                    int i8 = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i8;
                }
            }
        }
    }

    @Override // T1.g
    public final void g(int i8, String str) {
        q0.h(str, "value");
        this.f5876M[i8] = 4;
        this.f5874K[i8] = str;
    }

    @Override // T1.h
    public final void k(u uVar) {
        int i8 = this.f5877N;
        if (1 > i8) {
            return;
        }
        int i9 = 1;
        while (true) {
            int i10 = this.f5876M[i9];
            if (i10 == 1) {
                uVar.J(i9);
            } else if (i10 == 2) {
                uVar.w(i9, this.f5872I[i9]);
            } else if (i10 == 3) {
                uVar.o(i9, this.f5873J[i9]);
            } else if (i10 == 4) {
                String str = this.f5874K[i9];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                uVar.g(i9, str);
            } else if (i10 == 5) {
                byte[] bArr = this.f5875L[i9];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                uVar.A(i9, bArr);
            }
            if (i9 == i8) {
                return;
            } else {
                i9++;
            }
        }
    }

    @Override // T1.g
    public final void o(int i8, double d6) {
        this.f5876M[i8] = 3;
        this.f5873J[i8] = d6;
    }

    @Override // T1.g
    public final void w(int i8, long j8) {
        this.f5876M[i8] = 2;
        this.f5872I[i8] = j8;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

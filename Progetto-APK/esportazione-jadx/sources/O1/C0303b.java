package O1;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: O1.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0303b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final B f5337d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p156u.e f5334a = new p156u.e(30, 1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f5335b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f5336c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5339f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final J f5338e = new J(this, 2);

    public C0303b(B b8) {
        this.f5337d = b8;
    }

    public final boolean a(int i8) {
        ArrayList arrayList = this.f5336c;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            C0302a c0302a = (C0302a) arrayList.get(i9);
            int i10 = c0302a.f5330a;
            if (i10 == 8) {
                if (f(c0302a.f5333d, i9 + 1) == i8) {
                    return true;
                }
            } else if (i10 == 1) {
                int i11 = c0302a.f5331b;
                int i12 = c0302a.f5333d + i11;
                while (i11 < i12) {
                    if (f(i11, i9 + 1) == i8) {
                        return true;
                    }
                    i11++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.f5336c;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            this.f5337d.a((C0302a) arrayList.get(i8));
        }
        l(arrayList);
        this.f5339f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.f5335b;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            C0302a c0302a = (C0302a) arrayList.get(i8);
            int i9 = c0302a.f5330a;
            B b8 = this.f5337d;
            if (i9 == 1) {
                b8.a(c0302a);
                b8.d(c0302a.f5331b, c0302a.f5333d);
            } else if (i9 == 2) {
                b8.a(c0302a);
                int i10 = c0302a.f5331b;
                int i11 = c0302a.f5333d;
                RecyclerView recyclerView = b8.f5264G;
                recyclerView.T(true, i10, i11);
                recyclerView.f9641Q0 = true;
                recyclerView.f9635N0.f5316c += i11;
            } else if (i9 == 4) {
                b8.a(c0302a);
                b8.c(c0302a.f5331b, c0302a.f5332c, c0302a.f5333d);
            } else if (i9 == 8) {
                b8.a(c0302a);
                b8.e(c0302a.f5331b, c0302a.f5333d);
            }
        }
        l(arrayList);
        this.f5339f = 0;
    }

    public final void d(C0302a c0302a) {
        int i8;
        int i9 = c0302a.f5330a;
        if (i9 == 1 || i9 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iM = m(c0302a.f5331b, i9);
        int i10 = c0302a.f5331b;
        int i11 = c0302a.f5330a;
        if (i11 == 2) {
            i8 = 0;
        } else {
            if (i11 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + c0302a);
            }
            i8 = 1;
        }
        int i12 = 1;
        for (int i13 = 1; i13 < c0302a.f5333d; i13++) {
            int iM2 = m((i8 * i13) + c0302a.f5331b, c0302a.f5330a);
            int i14 = c0302a.f5330a;
            if (i14 == 2 ? iM2 != iM : !(i14 == 4 && iM2 == iM + 1)) {
                C0302a c0302aH = h(c0302a.f5332c, i14, iM, i12);
                e(c0302aH, i10);
                c0302aH.f5332c = null;
                this.f5334a.a(c0302aH);
                if (c0302a.f5330a == 4) {
                    i10 += i12;
                }
                iM = iM2;
                i12 = 1;
            } else {
                i12++;
            }
        }
        Object obj = c0302a.f5332c;
        c0302a.f5332c = null;
        this.f5334a.a(c0302a);
        if (i12 > 0) {
            C0302a c0302aH2 = h(obj, c0302a.f5330a, iM, i12);
            e(c0302aH2, i10);
            c0302aH2.f5332c = null;
            this.f5334a.a(c0302aH2);
        }
    }

    public final void e(C0302a c0302a, int i8) {
        B b8 = this.f5337d;
        b8.a(c0302a);
        int i9 = c0302a.f5330a;
        if (i9 != 2) {
            if (i9 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            b8.c(i8, c0302a.f5332c, c0302a.f5333d);
            return;
        }
        int i10 = c0302a.f5333d;
        RecyclerView recyclerView = b8.f5264G;
        recyclerView.T(true, i8, i10);
        recyclerView.f9641Q0 = true;
        recyclerView.f9635N0.f5316c += i10;
    }

    public final int f(int i8, int i9) {
        ArrayList arrayList = this.f5336c;
        int size = arrayList.size();
        while (i9 < size) {
            C0302a c0302a = (C0302a) arrayList.get(i9);
            int i10 = c0302a.f5330a;
            if (i10 == 8) {
                int i11 = c0302a.f5331b;
                if (i11 == i8) {
                    i8 = c0302a.f5333d;
                } else {
                    if (i11 < i8) {
                        i8--;
                    }
                    if (c0302a.f5333d <= i8) {
                        i8++;
                    }
                }
            } else {
                int i12 = c0302a.f5331b;
                if (i12 > i8) {
                    continue;
                } else if (i10 == 2) {
                    int i13 = c0302a.f5333d;
                    if (i8 < i12 + i13) {
                        return -1;
                    }
                    i8 -= i13;
                } else if (i10 == 1) {
                    i8 += c0302a.f5333d;
                }
            }
            i9++;
        }
        return i8;
    }

    public final boolean g() {
        return this.f5335b.size() > 0;
    }

    public final C0302a h(Object obj, int i8, int i9, int i10) {
        C0302a c0302a = (C0302a) this.f5334a.h();
        if (c0302a != null) {
            c0302a.f5330a = i8;
            c0302a.f5331b = i9;
            c0302a.f5333d = i10;
            c0302a.f5332c = obj;
            return c0302a;
        }
        C0302a c0302a2 = new C0302a();
        c0302a2.f5330a = i8;
        c0302a2.f5331b = i9;
        c0302a2.f5333d = i10;
        c0302a2.f5332c = obj;
        return c0302a2;
    }

    public final void i(C0302a c0302a) {
        this.f5336c.add(c0302a);
        int i8 = c0302a.f5330a;
        B b8 = this.f5337d;
        if (i8 == 1) {
            b8.d(c0302a.f5331b, c0302a.f5333d);
            return;
        }
        if (i8 == 2) {
            int i9 = c0302a.f5331b;
            int i10 = c0302a.f5333d;
            RecyclerView recyclerView = b8.f5264G;
            recyclerView.T(false, i9, i10);
            recyclerView.f9641Q0 = true;
            return;
        }
        if (i8 == 4) {
            b8.c(c0302a.f5331b, c0302a.f5332c, c0302a.f5333d);
        } else if (i8 == 8) {
            b8.e(c0302a.f5331b, c0302a.f5333d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c0302a);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0192  */
    /* JADX WARN: Code duplicated, block: B:105:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:106:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:185:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x0138 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x0124 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x01a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x006c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0071  */
    /* JADX WARN: Code duplicated, block: B:33:0x0076  */
    /* JADX WARN: Code duplicated, block: B:37:0x0090  */
    /* JADX WARN: Code duplicated, block: B:38:0x0094  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:77:0x013a  */
    /* JADX WARN: Code duplicated, block: B:78:0x013c  */
    /* JADX WARN: Code duplicated, block: B:80:0x0142  */
    /* JADX WARN: Code duplicated, block: B:83:0x014d  */
    /* JADX WARN: Code duplicated, block: B:86:0x0158  */
    /* JADX WARN: Code duplicated, block: B:89:0x0163  */
    /* JADX WARN: Code duplicated, block: B:90:0x0169  */
    /* JADX WARN: Code duplicated, block: B:91:0x016b  */
    /* JADX WARN: Code duplicated, block: B:93:0x0171  */
    /* JADX WARN: Code duplicated, block: B:96:0x017c  */
    /* JADX WARN: Code duplicated, block: B:99:0x0187  */
    public final void j() {
        byte b8;
        boolean z7;
        byte b9;
        C0302a c0302aH;
        int i8;
        int i9;
        int i10;
        C0302a c0302aH2;
        boolean z8;
        boolean z9;
        C0302a c0302aH3;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        ArrayList arrayList = this.f5335b;
        J j8 = this.f5338e;
        j8.getClass();
        while (true) {
            int size = arrayList.size() - 1;
            boolean z10 = false;
            while (true) {
                b8 = -1;
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (((C0302a) arrayList.get(size)).f5330a != 8) {
                    z10 = true;
                } else if (z10) {
                    break;
                }
                size--;
            }
            if (size == -1) {
                break;
            }
            int i19 = size + 1;
            C0302a c0302a = (C0302a) arrayList.get(size);
            C0302a c0302a2 = (C0302a) arrayList.get(i19);
            int i20 = c0302a2.f5330a;
            if (i20 != 1) {
                Object obj = j8.f5274H;
                if (i20 == 2) {
                    int i21 = c0302a.f5331b;
                    int i22 = c0302a.f5333d;
                    if (i21 < i22) {
                        z8 = c0302a2.f5331b == i21 && c0302a2.f5333d == i22 - i21;
                        z9 = false;
                    } else {
                        z8 = c0302a2.f5331b == i22 + 1 && c0302a2.f5333d == i21 - i22;
                        z9 = true;
                    }
                    int i23 = c0302a2.f5331b;
                    if (i22 < i23) {
                        c0302a2.f5331b = i23 - 1;
                    } else {
                        int i24 = c0302a2.f5333d;
                        if (i22 < i23 + i24) {
                            c0302a2.f5333d = i24 - 1;
                            c0302a.f5330a = 2;
                            c0302a.f5333d = 1;
                            if (c0302a2.f5333d == 0) {
                                arrayList.remove(i19);
                                C0303b c0303b = (C0303b) obj;
                                c0303b.getClass();
                                c0302a2.f5332c = null;
                                c0303b.f5334a.a(c0302a2);
                            }
                        }
                    }
                    int i25 = c0302a.f5331b;
                    int i26 = c0302a2.f5331b;
                    if (i25 <= i26) {
                        c0302a2.f5331b = i26 + 1;
                    } else {
                        int i27 = i26 + c0302a2.f5333d;
                        if (i25 < i27) {
                            c0302aH3 = ((C0303b) obj).h(null, 2, i25 + 1, i27 - i25);
                            c0302a2.f5333d = c0302a.f5331b - c0302a2.f5331b;
                        }
                        if (z8) {
                            arrayList.set(size, c0302a2);
                            arrayList.remove(i19);
                            C0303b c0303b2 = (C0303b) obj;
                            c0303b2.getClass();
                            c0302a.f5332c = null;
                            c0303b2.f5334a.a(c0302a);
                        } else {
                            if (z9) {
                                if (c0302aH3 != null) {
                                    i17 = c0302a.f5331b;
                                    if (i17 > c0302aH3.f5331b) {
                                        c0302a.f5331b = i17 - c0302aH3.f5333d;
                                    }
                                    i18 = c0302a.f5333d;
                                    if (i18 > c0302aH3.f5331b) {
                                        c0302a.f5333d = i18 - c0302aH3.f5333d;
                                    }
                                }
                                i15 = c0302a.f5331b;
                                if (i15 > c0302a2.f5331b) {
                                    c0302a.f5331b = i15 - c0302a2.f5333d;
                                }
                                i16 = c0302a.f5333d;
                                if (i16 > c0302a2.f5331b) {
                                    c0302a.f5333d = i16 - c0302a2.f5333d;
                                }
                            } else {
                                if (c0302aH3 != null) {
                                    i13 = c0302a.f5331b;
                                    if (i13 >= c0302aH3.f5331b) {
                                        c0302a.f5331b = i13 - c0302aH3.f5333d;
                                    }
                                    i14 = c0302a.f5333d;
                                    if (i14 >= c0302aH3.f5331b) {
                                        c0302a.f5333d = i14 - c0302aH3.f5333d;
                                    }
                                }
                                i11 = c0302a.f5331b;
                                if (i11 >= c0302a2.f5331b) {
                                    c0302a.f5331b = i11 - c0302a2.f5333d;
                                }
                                i12 = c0302a.f5333d;
                                if (i12 >= c0302a2.f5331b) {
                                    c0302a.f5333d = i12 - c0302a2.f5333d;
                                }
                            }
                            arrayList.set(size, c0302a2);
                            if (c0302a.f5331b != c0302a.f5333d) {
                                arrayList.set(i19, c0302a);
                            } else {
                                arrayList.remove(i19);
                            }
                            if (c0302aH3 != null) {
                                arrayList.add(size, c0302aH3);
                            }
                        }
                    }
                    c0302aH3 = null;
                    if (z8) {
                        arrayList.set(size, c0302a2);
                        arrayList.remove(i19);
                        C0303b c0303b3 = (C0303b) obj;
                        c0303b3.getClass();
                        c0302a.f5332c = null;
                        c0303b3.f5334a.a(c0302a);
                    } else {
                        if (z9) {
                            if (c0302aH3 != null) {
                                i17 = c0302a.f5331b;
                                if (i17 > c0302aH3.f5331b) {
                                    c0302a.f5331b = i17 - c0302aH3.f5333d;
                                }
                                i18 = c0302a.f5333d;
                                if (i18 > c0302aH3.f5331b) {
                                    c0302a.f5333d = i18 - c0302aH3.f5333d;
                                }
                            }
                            i15 = c0302a.f5331b;
                            if (i15 > c0302a2.f5331b) {
                                c0302a.f5331b = i15 - c0302a2.f5333d;
                            }
                            i16 = c0302a.f5333d;
                            if (i16 > c0302a2.f5331b) {
                                c0302a.f5333d = i16 - c0302a2.f5333d;
                            }
                        } else {
                            if (c0302aH3 != null) {
                                i13 = c0302a.f5331b;
                                if (i13 >= c0302aH3.f5331b) {
                                    c0302a.f5331b = i13 - c0302aH3.f5333d;
                                }
                                i14 = c0302a.f5333d;
                                if (i14 >= c0302aH3.f5331b) {
                                    c0302a.f5333d = i14 - c0302aH3.f5333d;
                                }
                            }
                            i11 = c0302a.f5331b;
                            if (i11 >= c0302a2.f5331b) {
                                c0302a.f5331b = i11 - c0302a2.f5333d;
                            }
                            i12 = c0302a.f5333d;
                            if (i12 >= c0302a2.f5331b) {
                                c0302a.f5333d = i12 - c0302a2.f5333d;
                            }
                        }
                        arrayList.set(size, c0302a2);
                        if (c0302a.f5331b != c0302a.f5333d) {
                            arrayList.set(i19, c0302a);
                        } else {
                            arrayList.remove(i19);
                        }
                        if (c0302aH3 != null) {
                            arrayList.add(size, c0302aH3);
                        }
                    }
                } else if (i20 == 4) {
                    int i28 = c0302a.f5333d;
                    int i29 = c0302a2.f5331b;
                    if (i28 < i29) {
                        c0302a2.f5331b = i29 - 1;
                    } else {
                        int i30 = c0302a2.f5333d;
                        if (i28 < i29 + i30) {
                            c0302a2.f5333d = i30 - 1;
                            c0302aH = ((C0303b) obj).h(c0302a2.f5332c, 4, c0302a.f5331b, 1);
                        }
                        i8 = c0302a.f5331b;
                        i9 = c0302a2.f5331b;
                        if (i8 <= i9) {
                            c0302a2.f5331b = i9 + 1;
                        } else {
                            i10 = i9 + c0302a2.f5333d;
                            if (i8 < i10) {
                                int i31 = i10 - i8;
                                c0302aH2 = ((C0303b) obj).h(c0302a2.f5332c, 4, i8 + 1, i31);
                                c0302a2.f5333d -= i31;
                            }
                            arrayList.set(i19, c0302a);
                            if (c0302a2.f5333d > 0) {
                                arrayList.set(size, c0302a2);
                            } else {
                                arrayList.remove(size);
                                C0303b c0303b4 = (C0303b) obj;
                                c0303b4.getClass();
                                c0302a2.f5332c = null;
                                c0303b4.f5334a.a(c0302a2);
                            }
                            if (c0302aH != null) {
                                arrayList.add(size, c0302aH);
                            }
                            if (c0302aH2 != null) {
                                arrayList.add(size, c0302aH2);
                            }
                        }
                        c0302aH2 = null;
                        arrayList.set(i19, c0302a);
                        if (c0302a2.f5333d > 0) {
                            arrayList.set(size, c0302a2);
                        } else {
                            arrayList.remove(size);
                            C0303b c0303b5 = (C0303b) obj;
                            c0303b5.getClass();
                            c0302a2.f5332c = null;
                            c0303b5.f5334a.a(c0302a2);
                        }
                        if (c0302aH != null) {
                            arrayList.add(size, c0302aH);
                        }
                        if (c0302aH2 != null) {
                            arrayList.add(size, c0302aH2);
                        }
                    }
                    c0302aH = null;
                    i8 = c0302a.f5331b;
                    i9 = c0302a2.f5331b;
                    if (i8 <= i9) {
                        c0302a2.f5331b = i9 + 1;
                    } else {
                        i10 = i9 + c0302a2.f5333d;
                        if (i8 < i10) {
                            int i32 = i10 - i8;
                            c0302aH2 = ((C0303b) obj).h(c0302a2.f5332c, 4, i8 + 1, i32);
                            c0302a2.f5333d -= i32;
                        }
                        arrayList.set(i19, c0302a);
                        if (c0302a2.f5333d > 0) {
                            arrayList.set(size, c0302a2);
                        } else {
                            arrayList.remove(size);
                            C0303b c0303b6 = (C0303b) obj;
                            c0303b6.getClass();
                            c0302a2.f5332c = null;
                            c0303b6.f5334a.a(c0302a2);
                        }
                        if (c0302aH != null) {
                            arrayList.add(size, c0302aH);
                        }
                        if (c0302aH2 != null) {
                            arrayList.add(size, c0302aH2);
                        }
                    }
                    c0302aH2 = null;
                    arrayList.set(i19, c0302a);
                    if (c0302a2.f5333d > 0) {
                        arrayList.set(size, c0302a2);
                    } else {
                        arrayList.remove(size);
                        C0303b c0303b7 = (C0303b) obj;
                        c0303b7.getClass();
                        c0302a2.f5332c = null;
                        c0303b7.f5334a.a(c0302a2);
                    }
                    if (c0302aH != null) {
                        arrayList.add(size, c0302aH);
                    }
                    if (c0302aH2 != null) {
                        arrayList.add(size, c0302aH2);
                    }
                }
            } else {
                int i33 = c0302a.f5333d;
                int i34 = c0302a2.f5331b;
                int i35 = i33 < i34 ? -1 : 0;
                int i36 = c0302a.f5331b;
                if (i36 < i34) {
                    i35++;
                }
                if (i34 <= i36) {
                    c0302a.f5331b = i36 + c0302a2.f5333d;
                }
                int i37 = c0302a2.f5331b;
                if (i37 <= i33) {
                    c0302a.f5333d = i33 + c0302a2.f5333d;
                }
                c0302a2.f5331b = i37 + i35;
                arrayList.set(size, c0302a2);
                arrayList.set(i19, c0302a);
            }
        }
        int size2 = arrayList.size();
        int i38 = 0;
        while (i38 < size2) {
            C0302a c0302aH4 = (C0302a) arrayList.get(i38);
            int i39 = c0302aH4.f5330a;
            if (i39 != 1) {
                B b10 = this.f5337d;
                if (i39 == 2) {
                    int i40 = c0302aH4.f5331b;
                    int i41 = c0302aH4.f5333d + i40;
                    int i42 = i40;
                    int i43 = 0;
                    byte b11 = -1;
                    while (i42 < i41) {
                        if (b10.b(i42) != null || a(i42)) {
                            if (b11 == 0) {
                                d(h(null, 2, i40, i43));
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            b9 = 1;
                        } else {
                            if (b11 == 1) {
                                i(h(null, 2, i40, i43));
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            b9 = 0;
                        }
                        if (z7) {
                            i42 -= i43;
                            i41 -= i43;
                            i43 = 1;
                        } else {
                            i43++;
                        }
                        i42++;
                        b11 = b9;
                    }
                    if (i43 != c0302aH4.f5333d) {
                        c0302aH4.f5332c = null;
                        this.f5334a.a(c0302aH4);
                        c0302aH4 = h(null, 2, i40, i43);
                    }
                    if (b11 == 0) {
                        d(c0302aH4);
                    } else {
                        i(c0302aH4);
                    }
                } else if (i39 == 4) {
                    int i44 = c0302aH4.f5331b;
                    int i45 = c0302aH4.f5333d + i44;
                    int i46 = i44;
                    int i47 = 0;
                    while (i44 < i45) {
                        if (b10.b(i44) != null || a(i44)) {
                            if (b8 == 0) {
                                d(h(c0302aH4.f5332c, 4, i46, i47));
                                i46 = i44;
                                i47 = 0;
                            }
                            b8 = 1;
                        } else {
                            if (b8 == 1) {
                                i(h(c0302aH4.f5332c, 4, i46, i47));
                                i46 = i44;
                                i47 = 0;
                            }
                            b8 = 0;
                        }
                        i47++;
                        i44++;
                    }
                    if (i47 != c0302aH4.f5333d) {
                        Object obj2 = c0302aH4.f5332c;
                        c0302aH4.f5332c = null;
                        this.f5334a.a(c0302aH4);
                        c0302aH4 = h(obj2, 4, i46, i47);
                    }
                    if (b8 == 0) {
                        d(c0302aH4);
                    } else {
                        i(c0302aH4);
                    }
                } else if (i39 == 8) {
                    i(c0302aH4);
                }
            } else {
                i(c0302aH4);
            }
            i38++;
            b8 = -1;
        }
        arrayList.clear();
    }

    public final void k(C0302a c0302a) {
        c0302a.f5332c = null;
        this.f5334a.a(c0302a);
    }

    public final void l(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            k((C0302a) arrayList.get(i8));
        }
        arrayList.clear();
    }

    public final int m(int i8, int i9) {
        int i10;
        int i11;
        ArrayList arrayList = this.f5336c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0302a c0302a = (C0302a) arrayList.get(size);
            int i12 = c0302a.f5330a;
            if (i12 == 8) {
                int i13 = c0302a.f5331b;
                int i14 = c0302a.f5333d;
                if (i13 < i14) {
                    i11 = i13;
                    i10 = i14;
                } else {
                    i10 = i13;
                    i11 = i14;
                }
                if (i8 < i11 || i8 > i10) {
                    if (i8 < i13) {
                        if (i9 == 1) {
                            c0302a.f5331b = i13 + 1;
                            c0302a.f5333d = i14 + 1;
                        } else if (i9 == 2) {
                            c0302a.f5331b = i13 - 1;
                            c0302a.f5333d = i14 - 1;
                        }
                    }
                } else if (i11 == i13) {
                    if (i9 == 1) {
                        c0302a.f5333d = i14 + 1;
                    } else if (i9 == 2) {
                        c0302a.f5333d = i14 - 1;
                    }
                    i8++;
                } else {
                    if (i9 == 1) {
                        c0302a.f5331b = i13 + 1;
                    } else if (i9 == 2) {
                        c0302a.f5331b = i13 - 1;
                    }
                    i8--;
                }
            } else {
                int i15 = c0302a.f5331b;
                if (i15 <= i8) {
                    if (i12 == 1) {
                        i8 -= c0302a.f5333d;
                    } else if (i12 == 2) {
                        i8 += c0302a.f5333d;
                    }
                } else if (i9 == 1) {
                    c0302a.f5331b = i15 + 1;
                } else if (i9 == 2) {
                    c0302a.f5331b = i15 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C0302a c0302a2 = (C0302a) arrayList.get(size2);
            if (c0302a2.f5330a == 8) {
                int i16 = c0302a2.f5333d;
                if (i16 == c0302a2.f5331b || i16 < 0) {
                    arrayList.remove(size2);
                    k(c0302a2);
                }
            } else if (c0302a2.f5333d <= 0) {
                arrayList.remove(size2);
                k(c0302a2);
            }
        }
        return i8;
    }
}

package L5;

import K.k;
import N.r;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f4724e = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final f[] f4725f = a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f4727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final k[] f4728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4729d;

    public f(int i8, int[] iArr, k... kVarArr) {
        int i9;
        this.f4726a = i8;
        this.f4727b = iArr;
        this.f4728c = kVarArr;
        k kVar = kVarArr[0];
        int i10 = kVar.f4294H;
        int i11 = 0;
        for (r rVar : (r[]) kVar.f4295I) {
            int iA = rVar.a();
            switch (rVar.f4918G) {
                case 12:
                    i9 = rVar.f4920I;
                    break;
                default:
                    i9 = rVar.f4920I;
                    break;
            }
            i11 += (i9 + i10) * iA;
        }
        this.f4729d = i11;
    }

    public static f[] a() {
        int i8 = 0;
        int i9 = 1;
        int i10 = 13;
        int i11 = 20;
        int i12 = 16;
        int i13 = 10;
        f fVar = new f(1, new int[0], new k(7, new r[]{new r(i9, 19, i10, i8)}, i11), new k(i13, new r[]{new r(i9, i12, i10, i8)}, i11), new k(i10, new r[]{new r(i9, i10, i10, i8)}, i11), new k(17, new r[]{new r(i9, 9, i10, i8)}, i11));
        k kVar = new k(i13, new r[]{new r(i9, 34, i10, i8)}, i11);
        int i14 = 28;
        int i15 = 22;
        f fVar2 = new f(2, new int[]{6, 18}, kVar, new k(i12, new r[]{new r(i9, i14, i10, i8)}, i11), new k(i15, new r[]{new r(i9, i15, i10, i8)}, i11), new k(i14, new r[]{new r(i9, i12, i10, i8)}, i11));
        int i16 = 2;
        f fVar3 = new f(3, new int[]{6, 22}, new k(15, new r[]{new r(i9, 55, i10, i8)}, i11), new k(26, new r[]{new r(i9, 44, i10, i8)}, i11), new k(18, new r[]{new r(i16, 17, i10, i8)}, i11), new k(i15, new r[]{new r(i16, i10, i10, i8)}, i11));
        int i17 = 13;
        int i18 = 2;
        f fVar4 = new f(4, new int[]{6, 26}, new k(i11, new r[]{new r(i9, 80, i17, i8)}, i11), new k(18, new r[]{new r(i18, 32, i17, i8)}, i11), new k(26, new r[]{new r(i18, 24, i17, i8)}, i11), new k(16, new r[]{new r(4, 9, i17, i8)}, i11));
        int i19 = 13;
        int i20 = 2;
        f fVar5 = new f(5, new int[]{6, 30}, new k(26, new r[]{new r(i9, 108, i19, i8)}, i11), new k(24, new r[]{new r(i20, 43, i19, i8)}, i11), new k(18, new r[]{new r(i20, 15, i19, i8), new r(i20, 16, i19, i8)}, 20), new k(22, new r[]{new r(i20, 11, i19, i8), new r(i20, 12, i19, i8)}, 20));
        int i21 = 13;
        int i22 = 20;
        int i23 = 4;
        f fVar6 = new f(6, new int[]{6, 34}, new k(18, new r[]{new r(i20, 68, i21, i8)}, i22), new k(16, new r[]{new r(i23, 27, i21, i8)}, i22), new k(24, new r[]{new r(i23, 19, i21, i8)}, 20), new k(28, new r[]{new r(i23, 15, i21, i8)}, 20));
        int i24 = 13;
        int i25 = 20;
        int i26 = 4;
        int i27 = 2;
        f fVar7 = new f(7, new int[]{6, 22, 38}, new k(i25, new r[]{new r(2, 78, i24, i8)}, i25), new k(18, new r[]{new r(4, 31, i24, i8)}, 20), new k(18, new r[]{new r(2, 14, i24, i8), new r(i26, 15, i24, i8)}, 20), new k(26, new r[]{new r(i26, i24, i24, i8), new r(1, 14, i24, i8)}, 20));
        int i28 = 13;
        int i29 = 2;
        f fVar8 = new f(8, new int[]{6, 24, 42}, new k(24, new r[]{new r(i27, 97, i28, i8)}, 20), new k(22, new r[]{new r(i27, 38, i28, i8), new r(i27, 39, i28, i8)}, 20), new k(22, new r[]{new r(4, 18, i28, i8), new r(i27, 19, i28, i8)}, 20), new k(26, new r[]{new r(4, 14, i28, i8), new r(i29, 15, i28, i8)}, 20));
        int i30 = 13;
        int i31 = 20;
        int i32 = 4;
        int i33 = 20;
        int i34 = 2;
        f fVar9 = new f(9, new int[]{6, 26, 46}, new k(30, new r[]{new r(i29, 116, i30, i8)}, i31), new k(22, new r[]{new r(3, 36, i30, i8), new r(i29, 37, i30, i8)}, i31), new k(i33, new r[]{new r(i32, 16, i30, i8), new r(i32, 17, i30, i8)}, i33), new k(24, new r[]{new r(i32, 12, i30, i8), new r(i32, i30, i30, i8)}, 20));
        int i35 = 13;
        k kVar2 = new k(18, new r[]{new r(i34, 68, i35, i8), new r(i34, 69, i35, i8)}, 20);
        k kVar3 = new k(26, new r[]{new r(4, 43, i35, i8), new r(1, 44, i35, i8)}, 20);
        int i36 = 20;
        k kVar4 = new k(24, new r[]{new r(6, 19, i35, i8), new r(i34, i36, i35, i8)}, i36);
        int i37 = 13;
        f fVar10 = new f(10, new int[]{6, 28, 50}, kVar2, kVar3, kVar4, new k(28, new r[]{new r(6, 15, i37, i8), new r(2, 16, i37, i8)}, 20));
        int i38 = 13;
        int i39 = 4;
        int i40 = 20;
        k kVar5 = new k(i40, new r[]{new r(i39, 81, i38, i8)}, i40);
        int i41 = 2;
        int i42 = 13;
        f fVar11 = new f(11, new int[]{6, 30, 54}, kVar5, new k(30, new r[]{new r(1, 50, i38, i8), new r(i39, 51, i38, i8)}, 20), new k(28, new r[]{new r(i39, 22, i42, i8), new r(i39, 23, i42, i8)}, 20), new k(24, new r[]{new r(3, 12, i42, i8), new r(8, i42, i42, i8)}, 20));
        int i43 = 13;
        int i44 = 20;
        f fVar12 = new f(12, new int[]{6, 32, 58}, new k(24, new r[]{new r(i41, 92, i43, i8), new r(i41, 93, i43, i8)}, 20), new k(22, new r[]{new r(6, 36, i43, i8), new r(i41, 37, i43, i8)}, i44), new k(26, new r[]{new r(4, i44, i43, i8), new r(6, 21, i43, i8)}, 20), new k(28, new r[]{new r(7, 14, i43, i8), new r(4, 15, i43, i8)}, 20));
        int i45 = 13;
        int i46 = 20;
        int i47 = 8;
        int i48 = 13;
        int i49 = 4;
        int i50 = 12;
        int i51 = 13;
        f fVar13 = new f(13, new int[]{6, 34, 62}, new k(26, new r[]{new r(4, 107, i45, i8)}, i46), new k(22, new r[]{new r(i47, 37, i45, i8), new r(1, 38, i45, i8)}, i46), new k(24, new r[]{new r(i47, i46, i48, i8), new r(i49, 21, i48, i8)}, 20), new k(22, new r[]{new r(i50, 11, i48, i8), new r(i49, i50, i48, i8)}, 20));
        int i52 = 5;
        int i53 = 20;
        f fVar14 = new f(14, new int[]{6, 26, 46, 66}, new k(30, new r[]{new r(3, 115, i51, i8), new r(1, 116, i51, i8)}, 20), new k(24, new r[]{new r(4, 40, i51, i8), new r(i52, 41, i51, i8)}, 20), new k(i53, new r[]{new r(11, 16, i51, i8), new r(i52, 17, i51, i8)}, i53), new k(24, new r[]{new r(11, 12, i51, i8), new r(5, i51, i51, i8)}, 20));
        int i54 = 13;
        int i55 = 5;
        int i56 = 13;
        int i57 = 24;
        int i58 = 7;
        f fVar15 = new f(15, new int[]{6, 26, 48, 70}, new k(22, new r[]{new r(i55, 87, i54, i8), new r(1, 88, i54, i8)}, 20), new k(i57, new r[]{new r(i55, 41, i56, i8), new r(i55, 42, i56, i8)}, 20), new k(30, new r[]{new r(i55, i57, i56, i8), new r(i58, 25, i56, i8)}, 20), new k(24, new r[]{new r(11, 12, i56, i8), new r(i58, i56, i56, i8)}, 20));
        int i59 = 13;
        k kVar6 = new k(24, new r[]{new r(5, 98, i59, i8), new r(1, 99, i59, i8)}, 20);
        k kVar7 = new k(28, new r[]{new r(7, 45, i59, i8), new r(3, 46, i59, i8)}, 20);
        int i60 = 20;
        k kVar8 = new k(24, new r[]{new r(15, 19, i59, i8), new r(2, i60, i59, i8)}, i60);
        int i61 = 13;
        f fVar16 = new f(16, new int[]{6, 26, 50, 74}, kVar6, kVar7, kVar8, new k(30, new r[]{new r(3, 15, i61, i8), new r(i61, 16, i61, i8)}, 20));
        int i62 = 13;
        int i63 = 1;
        int i64 = 13;
        f fVar17 = new f(17, new int[]{6, 30, 54, 78}, new k(28, new r[]{new r(1, 107, i62, i8), new r(5, 108, i62, i8)}, 20), new k(28, new r[]{new r(10, 46, i62, i8), new r(i63, 47, i62, i8)}, 20), new k(28, new r[]{new r(i63, 22, i64, i8), new r(15, 23, i64, i8)}, 20), new k(28, new r[]{new r(2, 14, i64, i8), new r(17, 15, i64, i8)}, 20));
        int i65 = 13;
        int i66 = 1;
        int i67 = 3;
        f fVar18 = new f(18, new int[]{6, 30, 56, 82}, new k(30, new r[]{new r(5, 120, i65, i8), new r(i66, 121, i65, i8)}, 20), new k(26, new r[]{new r(9, 43, i65, i8), new r(4, 44, i65, i8)}, 20), new k(28, new r[]{new r(17, 22, i65, i8), new r(i66, 23, i65, i8)}, 20), new k(28, new r[]{new r(2, 14, i65, i8), new r(19, 15, i65, i8)}, 20));
        int i68 = 13;
        int i69 = 3;
        f fVar19 = new f(19, new int[]{6, 30, 58, 86}, new k(28, new r[]{new r(i67, 113, i68, i8), new r(4, 114, i68, i8)}, 20), new k(26, new r[]{new r(i67, 44, i68, i8), new r(11, 45, i68, i8)}, 20), new k(26, new r[]{new r(17, 21, i68, i8), new r(4, 22, i68, i8)}, 20), new k(26, new r[]{new r(9, i68, i68, i8), new r(16, 14, i68, i8)}, 20));
        int i70 = 13;
        int i71 = 20;
        int i72 = 15;
        int i73 = 28;
        f fVar20 = new f(20, new int[]{6, 34, 62, 90}, new k(28, new r[]{new r(i69, 107, i70, i8), new r(5, 108, i70, i8)}, i71), new k(26, new r[]{new r(i69, 41, i70, i8), new r(i70, 42, i70, i8)}, i71), new k(30, new r[]{new r(15, 24, i70, i8), new r(5, 25, i70, i8)}, 20), new k(i73, new r[]{new r(i72, i72, i70, i8), new r(10, 16, i70, i8)}, 20));
        int i74 = 13;
        int i75 = 4;
        int i76 = 20;
        k kVar9 = new k(i73, new r[]{new r(i75, 116, i74, i8), new r(i75, 117, i74, i8)}, i76);
        int i77 = 17;
        f fVar21 = new f(21, new int[]{6, 28, 50, 72, 94}, kVar9, new k(26, new r[]{new r(i77, 42, i74, i8)}, i76), new k(28, new r[]{new r(i77, 22, i74, i8), new r(6, 23, i74, i8)}, 20), new k(30, new r[]{new r(19, 16, i74, i8), new r(6, 17, i74, i8)}, 20));
        int i78 = 13;
        int i79 = 20;
        int i80 = 28;
        k kVar10 = new k(i80, new r[]{new r(2, 111, i78, i8), new r(7, 112, i78, i8)}, i79);
        k kVar11 = new k(i80, new r[]{new r(17, 46, i78, i8)}, i79);
        int i81 = 20;
        f fVar22 = new f(22, new int[]{6, 26, 50, 74, 98}, kVar10, kVar11, new k(30, new r[]{new r(7, 24, i78, i8), new r(16, 25, i78, i8)}, i81), new k(24, new r[]{new r(34, i78, i78, i8)}, i81));
        int i82 = 13;
        int i83 = 4;
        k kVar12 = new k(30, new r[]{new r(i83, 121, i82, i8), new r(5, 122, i82, i8)}, 20);
        r rVar = new r(i83, 47, i82, i8);
        int i84 = 14;
        int i85 = 16;
        f fVar23 = new f(23, new int[]{6, 30, 54, 78, 102}, kVar12, new k(28, new r[]{rVar, new r(i84, 48, i82, i8)}, 20), new k(30, new r[]{new r(11, 24, i82, i8), new r(i84, 25, i82, i8)}, 20), new k(30, new r[]{new r(i85, 15, i82, i8), new r(14, i85, i82, i8)}, 20));
        int i86 = 6;
        int i87 = 13;
        int i88 = 16;
        int i89 = 30;
        f fVar24 = new f(24, new int[]{6, 28, 54, 80, 106}, new k(30, new r[]{new r(i86, 117, i87, i8), new r(4, 118, i87, i8)}, 20), new k(28, new r[]{new r(i86, 45, i87, i8), new r(14, 46, i87, i8)}, 20), new k(i89, new r[]{new r(11, 24, i87, i8), new r(i88, 25, i87, i8)}, 20), new k(30, new r[]{new r(i89, i88, i87, i8), new r(2, 17, i87, i8)}, 20));
        int i90 = 13;
        int i91 = 8;
        int i92 = 22;
        f fVar25 = new f(25, new int[]{6, 32, 58, 84, 110}, new k(26, new r[]{new r(i91, 106, i90, i8), new r(4, 107, i90, i8)}, 20), new k(28, new r[]{new r(i91, 47, i90, i8), new r(i90, 48, i90, i8)}, 20), new k(30, new r[]{new r(7, 24, i90, i8), new r(i92, 25, i90, i8)}, 20), new k(30, new r[]{new r(i92, 15, i90, i8), new r(i90, 16, i90, i8)}, 20));
        int i93 = 13;
        int i94 = 28;
        f fVar26 = new f(26, new int[]{6, 30, 58, 86, 114}, new k(28, new r[]{new r(10, 114, i93, i8), new r(2, 115, i93, i8)}, 20), new k(i94, new r[]{new r(19, 46, i93, i8), new r(4, 47, i93, i8)}, 20), new k(28, new r[]{new r(i94, 22, i93, i8), new r(6, 23, i93, i8)}, 20), new k(30, new r[]{new r(33, 16, i93, i8), new r(4, 17, i93, i8)}, 20));
        int i95 = 13;
        int i96 = 3;
        f fVar27 = new f(27, new int[]{6, 34, 62, 90, 118}, new k(30, new r[]{new r(8, 122, i95, i8), new r(4, 123, i95, i8)}, 20), new k(28, new r[]{new r(22, 45, i95, i8), new r(3, 46, i95, i8)}, 20), new k(30, new r[]{new r(8, 23, i95, i8), new r(26, 24, i95, i8)}, 20), new k(30, new r[]{new r(12, 15, i95, i8), new r(28, 16, i95, i8)}, 20));
        int i97 = 13;
        int i98 = 31;
        f fVar28 = new f(28, new int[]{6, 26, 50, 74, 98, 122}, new k(30, new r[]{new r(i96, 117, i97, i8), new r(10, 118, i97, i8)}, 20), new k(28, new r[]{new r(i96, 45, i97, i8), new r(23, 46, i97, i8)}, 20), new k(30, new r[]{new r(4, 24, i97, i8), new r(i98, 25, i97, i8)}, 20), new k(30, new r[]{new r(11, 15, i97, i8), new r(i98, 16, i97, i8)}, 20));
        int i99 = 13;
        int i100 = 7;
        f fVar29 = new f(29, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT}, new k(30, new r[]{new r(i100, 116, i99, i8), new r(i100, 117, i99, i8)}, 20), new k(28, new r[]{new r(21, 45, i99, i8), new r(i100, 46, i99, i8)}, 20), new k(30, new r[]{new r(1, 23, i99, i8), new r(37, 24, i99, i8)}, 20), new k(30, new r[]{new r(19, 15, i99, i8), new r(26, 16, i99, i8)}, 20));
        int i101 = 13;
        int i102 = 10;
        int i103 = 25;
        f fVar30 = new f(30, new int[]{6, 26, 52, 78, 104, 130}, new k(30, new r[]{new r(5, 115, i101, i8), new r(i102, 116, i101, i8)}, 20), new k(28, new r[]{new r(19, 47, i101, i8), new r(i102, 48, i101, i8)}, 20), new k(30, new r[]{new r(15, 24, i101, i8), new r(i103, i103, i101, i8)}, 20), new k(30, new r[]{new r(23, 15, i101, i8), new r(25, 16, i101, i8)}, 20));
        int i104 = 13;
        f fVar31 = new f(31, new int[]{6, 30, 56, 82, 108, 134}, new k(30, new r[]{new r(i104, 115, i104, i8), new r(3, 116, i104, i8)}, 20), new k(28, new r[]{new r(2, 46, i104, i8), new r(29, 47, i104, i8)}, 20), new k(30, new r[]{new r(42, 24, i104, i8), new r(1, 25, i104, i8)}, 20), new k(30, new r[]{new r(23, 15, i104, i8), new r(28, 16, i104, i8)}, 20));
        int i105 = 13;
        int i106 = 20;
        f fVar32 = new f(32, new int[]{6, 34, 60, 86, 112, 138}, new k(30, new r[]{new r(17, 115, i105, i8)}, i106), new k(28, new r[]{new r(10, 46, i105, i8), new r(23, 47, i105, i8)}, i106), new k(30, new r[]{new r(10, 24, i105, i8), new r(35, 25, i105, i8)}, 20), new k(30, new r[]{new r(19, 15, i105, i8), new r(35, 16, i105, i8)}, 20));
        int i107 = 13;
        f fVar33 = new f(33, new int[]{6, 30, 58, 86, 114, 142}, new k(30, new r[]{new r(17, 115, i107, i8), new r(1, 116, i107, i8)}, 20), new k(28, new r[]{new r(14, 46, i107, i8), new r(21, 47, i107, i8)}, 20), new k(30, new r[]{new r(29, 24, i107, i8), new r(19, 25, i107, i8)}, 20), new k(30, new r[]{new r(11, 15, i107, i8), new r(46, 16, i107, i8)}, 20));
        int i108 = 13;
        f fVar34 = new f(34, new int[]{6, 34, 62, 90, 118, 146}, new k(30, new r[]{new r(i108, 115, i108, i8), new r(6, 116, i108, i8)}, 20), new k(28, new r[]{new r(14, 46, i108, i8), new r(23, 47, i108, i8)}, 20), new k(30, new r[]{new r(44, 24, i108, i8), new r(7, 25, i108, i8)}, 20), new k(30, new r[]{new r(59, 16, i108, i8), new r(1, 17, i108, i8)}, 20));
        int i109 = 13;
        int i110 = 12;
        f fVar35 = new f(35, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT, 150}, new k(30, new r[]{new r(i110, 121, i109, i8), new r(7, 122, i109, i8)}, 20), new k(28, new r[]{new r(i110, 47, i109, i8), new r(26, 48, i109, i8)}, 20), new k(30, new r[]{new r(39, 24, i109, i8), new r(14, 25, i109, i8)}, 20), new k(30, new r[]{new r(22, 15, i109, i8), new r(41, 16, i109, i8)}, 20));
        int i111 = 13;
        int i112 = 6;
        f fVar36 = new f(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new k(30, new r[]{new r(i112, 121, i111, i8), new r(14, 122, i111, i8)}, 20), new k(28, new r[]{new r(i112, 47, i111, i8), new r(34, 48, i111, i8)}, 20), new k(30, new r[]{new r(46, 24, i111, i8), new r(10, 25, i111, i8)}, 20), new k(30, new r[]{new r(2, 15, i111, i8), new r(64, 16, i111, i8)}, 20));
        int i113 = 13;
        f fVar37 = new f(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new k(30, new r[]{new r(17, 122, i113, i8), new r(4, 123, i113, i8)}, 20), new k(28, new r[]{new r(29, 46, i113, i8), new r(14, 47, i113, i8)}, 20), new k(30, new r[]{new r(49, 24, i113, i8), new r(10, 25, i113, i8)}, 20), new k(30, new r[]{new r(24, 15, i113, i8), new r(46, 16, i113, i8)}, 20));
        int i114 = 13;
        f fVar38 = new f(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new k(30, new r[]{new r(4, 122, i114, i8), new r(18, 123, i114, i8)}, 20), new k(28, new r[]{new r(i114, 46, i114, i8), new r(32, 47, i114, i8)}, 20), new k(30, new r[]{new r(48, 24, i114, i8), new r(14, 25, i114, i8)}, 20), new k(30, new r[]{new r(42, 15, i114, i8), new r(32, 16, i114, i8)}, 20));
        int i115 = 13;
        int i116 = 20;
        f fVar39 = new f(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new k(30, new r[]{new r(i116, 117, i115, i8), new r(4, 118, i115, i8)}, i116), new k(28, new r[]{new r(40, 47, i115, i8), new r(7, 48, i115, i8)}, 20), new k(30, new r[]{new r(43, 24, i115, i8), new r(22, 25, i115, i8)}, 20), new k(30, new r[]{new r(10, 15, i115, i8), new r(67, 16, i115, i8)}, 20));
        int i117 = 13;
        int i118 = 34;
        int i119 = 20;
        return new f[]{fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11, fVar12, fVar13, fVar14, fVar15, fVar16, fVar17, fVar18, fVar19, fVar20, fVar21, fVar22, fVar23, fVar24, fVar25, fVar26, fVar27, fVar28, fVar29, fVar30, fVar31, fVar32, fVar33, fVar34, fVar35, fVar36, fVar37, fVar38, fVar39, new f(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new k(30, new r[]{new r(19, 118, i117, i8), new r(6, 119, i117, i8)}, 20), new k(28, new r[]{new r(18, 47, i117, i8), new r(31, 48, i117, i8)}, 20), new k(30, new r[]{new r(i118, 24, i117, i8), new r(i118, 25, i117, i8)}, i119), new k(30, new r[]{new r(i119, 15, i117, i8), new r(61, 16, i117, i8)}, 20))};
    }

    public static f b(int i8) {
        int i9 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        int i10 = 0;
        for (int i11 = 0; i11 < 34; i11++) {
            int i12 = f4724e[i11];
            if (i12 == i8) {
                return c(i11 + 7);
            }
            int iBitCount = Integer.bitCount(i12 ^ i8);
            if (iBitCount < i9) {
                i10 = i11 + 7;
                i9 = iBitCount;
            }
        }
        if (i9 <= 3) {
            return c(i10);
        }
        return null;
    }

    public static f c(int i8) {
        if (i8 <= 0 || i8 > 40) {
            throw new IllegalArgumentException();
        }
        return f4725f[i8 - 1];
    }

    public final String toString() {
        return String.valueOf(this.f4726a);
    }
}

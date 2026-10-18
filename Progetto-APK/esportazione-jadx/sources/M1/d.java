package M1;

import A0.O;
import android.content.pm.PackageInfo;
import com.google.protobuf.U2;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import p000a.r;
import p117p0.AbstractC3164b;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f4755a = {112, 114, 111, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f4756b = {112, 114, 109, 0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f4757c = {48, 49, 53, 0};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f4758d = {48, 49, 48, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f4759e = {48, 48, 57, 0};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f4760f = {48, 48, 53, 0};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final byte[] f4761g = {48, 48, 49, 0};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f4762h = {48, 48, 49, 0};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final byte[] f4763i = {48, 48, 50, 0};

    public static byte[] a(b[] bVarArr, byte[] bArr) throws IOException {
        int i8 = 0;
        int length = 0;
        for (b bVar : bVarArr) {
            length += ((((bVar.f4752g * 2) + 7) & (-8)) / 8) + (bVar.f4750e * 2) + b(bArr, bVar.f4746a, bVar.f4747b).getBytes(StandardCharsets.UTF_8).length + 16 + bVar.f4751f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        if (Arrays.equals(bArr, f4759e)) {
            int length2 = bVarArr.length;
            while (i8 < length2) {
                b bVar2 = bVarArr[i8];
                m(byteArrayOutputStream, bVar2, b(bArr, bVar2.f4746a, bVar2.f4747b));
                l(byteArrayOutputStream, bVar2);
                i8++;
            }
        } else {
            for (b bVar3 : bVarArr) {
                m(byteArrayOutputStream, bVar3, b(bArr, bVar3.f4746a, bVar3.f4747b));
            }
            int length3 = bVarArr.length;
            while (i8 < length3) {
                l(byteArrayOutputStream, bVarArr[i8]);
                i8++;
            }
        }
        if (byteArrayOutputStream.size() == length) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + length);
    }

    public static String b(byte[] bArr, String str, String str2) {
        byte[] bArr2 = f4761g;
        boolean zEquals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = f4760f;
        Object obj = (zEquals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(obj)) {
                return str2.replace(":", "!");
            }
            return ":".equals(obj) ? str2.replace("!", ":") : str2;
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(":")) {
            if ("!".equals(obj)) {
                return str2.replace(":", "!");
            }
            return ":".equals(obj) ? str2.replace("!", ":") : str2;
        }
        if (str2.endsWith(".apk")) {
            return str2;
        }
        return r.j(U2.o(str), (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!", str2);
    }

    public static int c(int i8, int i9, int i10) {
        if (i8 == 1) {
            throw new IllegalStateException("HOT methods are not stored in the bitmap");
        }
        if (i8 == 2) {
            return i9;
        }
        if (i8 == 4) {
            return i9 + i10;
        }
        throw new IllegalStateException(r.f("Unexpected flag: ", i8));
    }

    public static void d(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
        }
    }

    public static int[] e(int i8, ByteArrayInputStream byteArrayInputStream) {
        int[] iArr = new int[i8];
        int iE = 0;
        for (int i9 = 0; i9 < i8; i9++) {
            iE += (int) AbstractC3164b.E(2, byteArrayInputStream);
            iArr[i9] = iE;
        }
        return iArr;
    }

    public static b[] f(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, b[] bVarArr) throws IOException {
        byte[] bArr3 = f4762h;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, f4763i)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int iE = (int) AbstractC3164b.E(2, fileInputStream);
            byte[] bArrC = AbstractC3164b.C(fileInputStream, (int) AbstractC3164b.E(4, fileInputStream), (int) AbstractC3164b.E(4, fileInputStream));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrC);
            try {
                b[] bVarArrH = h(byteArrayInputStream, bArr2, iE, bVarArr);
                byteArrayInputStream.close();
                return bVarArrH;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(f4757c, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int iE2 = (int) AbstractC3164b.E(1, fileInputStream);
        byte[] bArrC2 = AbstractC3164b.C(fileInputStream, (int) AbstractC3164b.E(4, fileInputStream), (int) AbstractC3164b.E(4, fileInputStream));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrC2);
        try {
            b[] bVarArrG = g(byteArrayInputStream2, iE2, bVarArr);
            byteArrayInputStream2.close();
            return bVarArrG;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static b[] g(ByteArrayInputStream byteArrayInputStream, int i8, b[] bVarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new b[0];
        }
        if (i8 != bVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i8];
        int[] iArr = new int[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            int iE = (int) AbstractC3164b.E(2, byteArrayInputStream);
            iArr[i9] = (int) AbstractC3164b.E(2, byteArrayInputStream);
            strArr[i9] = new String(AbstractC3164b.B(iE, byteArrayInputStream), StandardCharsets.UTF_8);
        }
        for (int i10 = 0; i10 < i8; i10++) {
            b bVar = bVarArr[i10];
            if (!bVar.f4747b.equals(strArr[i10])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i11 = iArr[i10];
            bVar.f4750e = i11;
            bVar.f4753h = e(i11, byteArrayInputStream);
        }
        return bVarArr;
    }

    public static b[] h(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i8, b[] bVarArr) throws IOException {
        if (byteArrayInputStream.available() == 0) {
            return new b[0];
        }
        if (i8 != bVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            AbstractC3164b.E(2, byteArrayInputStream);
            String str = new String(AbstractC3164b.B((int) AbstractC3164b.E(2, byteArrayInputStream), byteArrayInputStream), StandardCharsets.UTF_8);
            long jE = AbstractC3164b.E(4, byteArrayInputStream);
            int iE = (int) AbstractC3164b.E(2, byteArrayInputStream);
            b bVar = null;
            if (bVarArr.length > 0) {
                int iIndexOf = str.indexOf("!");
                if (iIndexOf < 0) {
                    iIndexOf = str.indexOf(":");
                }
                String strSubstring = iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
                for (int i10 = 0; i10 < bVarArr.length; i10++) {
                    if (bVarArr[i10].f4747b.equals(strSubstring)) {
                        bVar = bVarArr[i10];
                        break;
                    }
                }
            }
            if (bVar == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            bVar.f4749d = jE;
            int[] iArrE = e(iE, byteArrayInputStream);
            if (Arrays.equals(bArr, f4761g)) {
                bVar.f4750e = iE;
                bVar.f4753h = iArrE;
            }
        }
        return bVarArr;
    }

    public static b[] i(FileInputStream fileInputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, f4758d)) {
            throw new IllegalStateException("Unsupported version");
        }
        int iE = (int) AbstractC3164b.E(1, fileInputStream);
        byte[] bArrC = AbstractC3164b.C(fileInputStream, (int) AbstractC3164b.E(4, fileInputStream), (int) AbstractC3164b.E(4, fileInputStream));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrC);
        try {
            b[] bVarArrJ = j(byteArrayInputStream, str, iE);
            byteArrayInputStream.close();
            return bVarArrJ;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static b[] j(ByteArrayInputStream byteArrayInputStream, String str, int i8) throws IOException {
        TreeMap treeMap;
        if (byteArrayInputStream.available() == 0) {
            return new b[0];
        }
        b[] bVarArr = new b[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            int iE = (int) AbstractC3164b.E(2, byteArrayInputStream);
            int iE2 = (int) AbstractC3164b.E(2, byteArrayInputStream);
            bVarArr[i9] = new b(str, new String(AbstractC3164b.B(iE, byteArrayInputStream), StandardCharsets.UTF_8), AbstractC3164b.E(4, byteArrayInputStream), iE2, (int) AbstractC3164b.E(4, byteArrayInputStream), (int) AbstractC3164b.E(4, byteArrayInputStream), new int[iE2], new TreeMap());
        }
        for (int i10 = 0; i10 < i8; i10++) {
            b bVar = bVarArr[i10];
            int iAvailable = byteArrayInputStream.available() - bVar.f4751f;
            int iE3 = 0;
            while (true) {
                int iAvailable2 = byteArrayInputStream.available();
                treeMap = bVar.f4754i;
                if (iAvailable2 <= iAvailable) {
                    break;
                }
                iE3 += (int) AbstractC3164b.E(2, byteArrayInputStream);
                treeMap.put(Integer.valueOf(iE3), 1);
                for (int iE4 = (int) AbstractC3164b.E(2, byteArrayInputStream); iE4 > 0; iE4--) {
                    AbstractC3164b.E(2, byteArrayInputStream);
                    int iE5 = (int) AbstractC3164b.E(1, byteArrayInputStream);
                    if (iE5 != 6 && iE5 != 7) {
                        while (iE5 > 0) {
                            AbstractC3164b.E(1, byteArrayInputStream);
                            for (int iE6 = (int) AbstractC3164b.E(1, byteArrayInputStream); iE6 > 0; iE6--) {
                                AbstractC3164b.E(2, byteArrayInputStream);
                            }
                            iE5--;
                        }
                    }
                }
            }
            if (byteArrayInputStream.available() != iAvailable) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            bVar.f4753h = e(bVar.f4750e, byteArrayInputStream);
            int i11 = bVar.f4752g;
            BitSet bitSetValueOf = BitSet.valueOf(AbstractC3164b.B((((i11 * 2) + 7) & (-8)) / 8, byteArrayInputStream));
            for (int i12 = 0; i12 < i11; i12++) {
                int i13 = bitSetValueOf.get(c(2, i12, i11)) ? 2 : 0;
                if (bitSetValueOf.get(c(4, i12, i11))) {
                    i13 |= 4;
                }
                if (i13 != 0) {
                    Integer num = (Integer) treeMap.get(Integer.valueOf(i12));
                    if (num == null) {
                        num = 0;
                    }
                    treeMap.put(Integer.valueOf(i12), Integer.valueOf(i13 | num.intValue()));
                }
            }
        }
        return bVarArr;
    }

    public static boolean k(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, b[] bVarArr) throws IOException {
        ArrayList arrayList;
        int length;
        byte[] bArr2 = f4757c;
        int i8 = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = f4758d;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] bArrA = a(bVarArr, bArr3);
                AbstractC3164b.G(byteArrayOutputStream, bVarArr.length, 1);
                AbstractC3164b.G(byteArrayOutputStream, bArrA.length, 4);
                byte[] bArrI = AbstractC3164b.i(bArrA);
                AbstractC3164b.G(byteArrayOutputStream, bArrI.length, 4);
                byteArrayOutputStream.write(bArrI);
                return true;
            }
            byte[] bArr4 = f4760f;
            if (Arrays.equals(bArr, bArr4)) {
                AbstractC3164b.G(byteArrayOutputStream, bVarArr.length, 1);
                for (b bVar : bVarArr) {
                    int size = bVar.f4754i.size() * 4;
                    String strB = b(bArr4, bVar.f4746a, bVar.f4747b);
                    Charset charset = StandardCharsets.UTF_8;
                    AbstractC3164b.H(byteArrayOutputStream, strB.getBytes(charset).length);
                    AbstractC3164b.H(byteArrayOutputStream, bVar.f4753h.length);
                    AbstractC3164b.G(byteArrayOutputStream, size, 4);
                    AbstractC3164b.G(byteArrayOutputStream, bVar.f4748c, 4);
                    byteArrayOutputStream.write(strB.getBytes(charset));
                    Iterator it = bVar.f4754i.keySet().iterator();
                    while (it.hasNext()) {
                        AbstractC3164b.H(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        AbstractC3164b.H(byteArrayOutputStream, 0);
                    }
                    for (int i9 : bVar.f4753h) {
                        AbstractC3164b.H(byteArrayOutputStream, i9);
                    }
                }
                return true;
            }
            byte[] bArr5 = f4759e;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] bArrA2 = a(bVarArr, bArr5);
                AbstractC3164b.G(byteArrayOutputStream, bVarArr.length, 1);
                AbstractC3164b.G(byteArrayOutputStream, bArrA2.length, 4);
                byte[] bArrI2 = AbstractC3164b.i(bArrA2);
                AbstractC3164b.G(byteArrayOutputStream, bArrI2.length, 4);
                byteArrayOutputStream.write(bArrI2);
                return true;
            }
            byte[] bArr6 = f4761g;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            AbstractC3164b.H(byteArrayOutputStream, bVarArr.length);
            for (b bVar2 : bVarArr) {
                String strB2 = b(bArr6, bVar2.f4746a, bVar2.f4747b);
                Charset charset2 = StandardCharsets.UTF_8;
                AbstractC3164b.H(byteArrayOutputStream, strB2.getBytes(charset2).length);
                TreeMap treeMap = bVar2.f4754i;
                AbstractC3164b.H(byteArrayOutputStream, treeMap.size());
                AbstractC3164b.H(byteArrayOutputStream, bVar2.f4753h.length);
                AbstractC3164b.G(byteArrayOutputStream, bVar2.f4748c, 4);
                byteArrayOutputStream.write(strB2.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    AbstractC3164b.H(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i10 : bVar2.f4753h) {
                    AbstractC3164b.H(byteArrayOutputStream, i10);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            AbstractC3164b.H(byteArrayOutputStream2, bVarArr.length);
            int i11 = 2;
            int i12 = 2;
            for (b bVar3 : bVarArr) {
                AbstractC3164b.G(byteArrayOutputStream2, bVar3.f4748c, 4);
                AbstractC3164b.G(byteArrayOutputStream2, bVar3.f4749d, 4);
                AbstractC3164b.G(byteArrayOutputStream2, bVar3.f4752g, 4);
                String strB3 = b(bArr2, bVar3.f4746a, bVar3.f4747b);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = strB3.getBytes(charset3).length;
                AbstractC3164b.H(byteArrayOutputStream2, length2);
                i12 = i12 + 14 + length2;
                byteArrayOutputStream2.write(strB3.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i12 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i12 + ", does not match actual size " + byteArray.length);
            }
            h hVar = new h(1, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList2.add(hVar);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i13 = 0;
            int i14 = 0;
            while (i13 < bVarArr.length) {
                try {
                    b bVar4 = bVarArr[i13];
                    AbstractC3164b.H(byteArrayOutputStream3, i13);
                    AbstractC3164b.H(byteArrayOutputStream3, bVar4.f4750e);
                    i14 = i14 + 4 + (bVar4.f4750e * 2);
                    int[] iArr = bVar4.f4753h;
                    int length3 = iArr.length;
                    int i15 = 0;
                    while (i8 < length3) {
                        int i16 = iArr[i8];
                        AbstractC3164b.H(byteArrayOutputStream3, i16 - i15);
                        i8++;
                        i15 = i16;
                    }
                    i13++;
                    i8 = 0;
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i14 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i14 + ", does not match actual size " + byteArray2.length);
            }
            h hVar2 = new h(3, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList2.add(hVar2);
            ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
            int i17 = 0;
            int i18 = 0;
            while (i17 < bVarArr.length) {
                try {
                    b bVar5 = bVarArr[i17];
                    Iterator it3 = bVar5.f4754i.entrySet().iterator();
                    int iIntValue = 0;
                    while (it3.hasNext()) {
                        iIntValue |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream5 = new ByteArrayOutputStream();
                    try {
                        n(byteArrayOutputStream5, iIntValue, bVar5);
                        byte[] byteArray3 = byteArrayOutputStream5.toByteArray();
                        byteArrayOutputStream5.close();
                        ByteArrayOutputStream byteArrayOutputStream6 = new ByteArrayOutputStream();
                        try {
                            o(byteArrayOutputStream6, bVar5);
                            byte[] byteArray4 = byteArrayOutputStream6.toByteArray();
                            byteArrayOutputStream6.close();
                            AbstractC3164b.H(byteArrayOutputStream4, i17);
                            int length4 = byteArray3.length + i11 + byteArray4.length;
                            int i19 = i18 + 6;
                            ArrayList arrayList4 = arrayList3;
                            AbstractC3164b.G(byteArrayOutputStream4, length4, 4);
                            AbstractC3164b.H(byteArrayOutputStream4, iIntValue);
                            byteArrayOutputStream4.write(byteArray3);
                            byteArrayOutputStream4.write(byteArray4);
                            i18 = i19 + length4;
                            i17++;
                            arrayList3 = arrayList4;
                            i11 = 2;
                        } catch (Throwable th3) {
                            try {
                                byteArrayOutputStream6.close();
                                throw th3;
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                                throw th3;
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            byteArrayOutputStream5.close();
                            throw th5;
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                            throw th5;
                        }
                    }
                } catch (Throwable th7) {
                    try {
                        byteArrayOutputStream4.close();
                        throw th7;
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                        throw th7;
                    }
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream4.toByteArray();
            if (i18 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i18 + ", does not match actual size " + byteArray5.length);
            }
            h hVar3 = new h(4, byteArray5, true);
            byteArrayOutputStream4.close();
            arrayList2.add(hVar3);
            long j8 = 4;
            long size2 = j8 + j8 + 4 + ((long) (arrayList2.size() * 16));
            int i20 = 4;
            AbstractC3164b.G(byteArrayOutputStream, arrayList2.size(), 4);
            int i21 = 0;
            while (i21 < arrayList2.size()) {
                h hVar4 = (h) arrayList2.get(i21);
                AbstractC3164b.G(byteArrayOutputStream, O.t(hVar4.f4775a), i20);
                AbstractC3164b.G(byteArrayOutputStream, size2, i20);
                boolean z7 = hVar4.f4777c;
                byte[] bArr7 = hVar4.f4776b;
                if (z7) {
                    long length5 = bArr7.length;
                    byte[] bArrI3 = AbstractC3164b.i(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(bArrI3);
                    AbstractC3164b.G(byteArrayOutputStream, bArrI3.length, 4);
                    AbstractC3164b.G(byteArrayOutputStream, length5, 4);
                    length = bArrI3.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    AbstractC3164b.G(byteArrayOutputStream, bArr7.length, 4);
                    AbstractC3164b.G(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += (long) length;
                i21++;
                arrayList5 = arrayList;
                i20 = 4;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i22 = 0; i22 < arrayList6.size(); i22++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i22));
            }
            return true;
        } catch (Throwable th9) {
            try {
                byteArrayOutputStream2.close();
                throw th9;
            } catch (Throwable th10) {
                th9.addSuppressed(th10);
                throw th9;
            }
        }
    }

    public static void l(ByteArrayOutputStream byteArrayOutputStream, b bVar) throws IOException {
        o(byteArrayOutputStream, bVar);
        int[] iArr = bVar.f4753h;
        int length = iArr.length;
        int i8 = 0;
        int i9 = 0;
        while (i8 < length) {
            int i10 = iArr[i8];
            AbstractC3164b.H(byteArrayOutputStream, i10 - i9);
            i8++;
            i9 = i10;
        }
        int i11 = bVar.f4752g;
        byte[] bArr = new byte[(((i11 * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : bVar.f4754i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                int iC = c(2, iIntValue, i11);
                int i12 = iC / 8;
                bArr[i12] = (byte) ((1 << (iC % 8)) | bArr[i12]);
            }
            if ((iIntValue2 & 4) != 0) {
                int iC2 = c(4, iIntValue, i11);
                int i13 = iC2 / 8;
                bArr[i13] = (byte) ((1 << (iC2 % 8)) | bArr[i13]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void m(ByteArrayOutputStream byteArrayOutputStream, b bVar, String str) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        AbstractC3164b.H(byteArrayOutputStream, str.getBytes(charset).length);
        AbstractC3164b.H(byteArrayOutputStream, bVar.f4750e);
        AbstractC3164b.G(byteArrayOutputStream, bVar.f4751f, 4);
        AbstractC3164b.G(byteArrayOutputStream, bVar.f4748c, 4);
        AbstractC3164b.G(byteArrayOutputStream, bVar.f4752g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void n(ByteArrayOutputStream byteArrayOutputStream, int i8, b bVar) throws IOException {
        int iBitCount = Integer.bitCount(i8 & (-2));
        int i9 = bVar.f4752g;
        byte[] bArr = new byte[(((iBitCount * i9) + 7) & (-8)) / 8];
        for (Map.Entry entry : bVar.f4754i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            int i10 = 0;
            for (int i11 = 1; i11 <= 4; i11 <<= 1) {
                if (i11 != 1 && (i11 & i8) != 0) {
                    if ((i11 & iIntValue2) == i11) {
                        int i12 = (i10 * i9) + iIntValue;
                        int i13 = i12 / 8;
                        bArr[i13] = (byte) ((1 << (i12 % 8)) | bArr[i13]);
                    }
                    i10++;
                }
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void o(ByteArrayOutputStream byteArrayOutputStream, b bVar) throws IOException {
        int i8 = 0;
        for (Map.Entry entry : bVar.f4754i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                AbstractC3164b.H(byteArrayOutputStream, iIntValue - i8);
                AbstractC3164b.H(byteArrayOutputStream, 0);
                i8 = iIntValue;
            }
        }
    }
}

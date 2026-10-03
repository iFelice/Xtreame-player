package F2;

import A0.O;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class l implements p173w2.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f3141a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f3142b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public static int e(k kVar, p196z2.h hVar) {
        try {
            int iD = kVar.d();
            if ((iD & 65496) != 65496 && iD != 19789 && iD != 18761) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + iD);
                }
                return -1;
            }
            int iG = g(kVar);
            if (iG == -1) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                }
                return -1;
            }
            byte[] bArr = (byte[]) hVar.d(iG, byte[].class);
            try {
                return h(kVar, bArr, iG);
            } finally {
                hVar.h(bArr);
            }
        } catch (j unused) {
            return -1;
        }
    }

    public static ImageHeaderParser$ImageType f(k kVar) {
        try {
            int iD = kVar.d();
            if (iD == 65496) {
                return ImageHeaderParser$ImageType.JPEG;
            }
            int iE = (iD << 8) | kVar.e();
            if (iE == 4671814) {
                return ImageHeaderParser$ImageType.GIF;
            }
            int iE2 = (iE << 8) | kVar.e();
            if (iE2 == -1991225785) {
                kVar.b(21L);
                try {
                    return kVar.e() >= 3 ? ImageHeaderParser$ImageType.PNG_A : ImageHeaderParser$ImageType.PNG;
                } catch (j unused) {
                    return ImageHeaderParser$ImageType.PNG;
                }
            }
            if (iE2 == 1380533830) {
                kVar.b(4L);
                if (((kVar.d() << 16) | kVar.d()) != 1464156752) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int iD2 = (kVar.d() << 16) | kVar.d();
                if ((iD2 & (-256)) != 1448097792) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int i8 = iD2 & 255;
                if (i8 != 88) {
                    if (i8 != 76) {
                        return ImageHeaderParser$ImageType.WEBP;
                    }
                    kVar.b(4L);
                    return (kVar.e() & 8) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
                }
                kVar.b(4L);
                short sE = kVar.e();
                if ((sE & 2) != 0) {
                    return ImageHeaderParser$ImageType.ANIMATED_WEBP;
                }
                return (sE & 16) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
            }
            if (((kVar.d() << 16) | kVar.d()) != 1718909296) {
                return ImageHeaderParser$ImageType.UNKNOWN;
            }
            int iD3 = (kVar.d() << 16) | kVar.d();
            if (iD3 == 1635150195) {
                return ImageHeaderParser$ImageType.ANIMATED_AVIF;
            }
            int i9 = 0;
            boolean z7 = iD3 == 1635150182;
            kVar.b(4L);
            int i10 = iE2 - 16;
            if (i10 % 4 == 0) {
                while (i9 < 5 && i10 > 0) {
                    int iD4 = (kVar.d() << 16) | kVar.d();
                    if (iD4 == 1635150195) {
                        return ImageHeaderParser$ImageType.ANIMATED_AVIF;
                    }
                    if (iD4 == 1635150182) {
                        z7 = true;
                    }
                    i9++;
                    i10 -= 4;
                }
            }
            return z7 ? ImageHeaderParser$ImageType.AVIF : ImageHeaderParser$ImageType.UNKNOWN;
        } catch (j unused2) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    public static int g(k kVar) {
        short sE;
        int iD;
        long j8;
        long jB;
        do {
            short sE2 = kVar.e();
            if (sE2 != 255) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) sE2));
                }
                return -1;
            }
            sE = kVar.e();
            if (sE == 218) {
                return -1;
            }
            if (sE == 217) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            iD = kVar.d() - 2;
            if (sE == 225) {
                return iD;
            }
            j8 = iD;
            jB = kVar.b(j8);
        } while (jB == j8);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sbD = O.D("Unable to skip enough data, type: ", sE, ", wanted to skip: ", iD, ", but actually skipped: ");
            sbD.append(jB);
            Log.d("DfltImageHeaderParser", sbD.toString());
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x017e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x004d  */
    /* JADX WARN: Code duplicated, block: B:23:0x005b  */
    /* JADX WARN: Code duplicated, block: B:30:0x007c  */
    /* JADX WARN: Code duplicated, block: B:33:0x008d  */
    /* JADX WARN: Code duplicated, block: B:34:0x0092  */
    /* JADX WARN: Code duplicated, block: B:37:0x009b  */
    /* JADX WARN: Code duplicated, block: B:40:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:77:0x0167  */
    /* JADX WARN: Code duplicated, block: B:79:0x016d  */
    /* JADX WARN: Code duplicated, block: B:99:0x017e A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:79:0x016d, please report this as an issue */
    public static int h(k kVar, byte[] bArr, int i8) {
        p173w2.h hVar;
        short sG;
        ByteOrder byteOrder;
        ByteBuffer byteBuffer;
        int i9;
        short sG2;
        int i10;
        short sG3;
        short sG4;
        int iF = kVar.f(i8, bArr);
        if (iF != i8) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i8 + ", actually read: " + iF);
            }
            return -1;
        }
        byte[] bArr2 = f3141a;
        short s7 = 1;
        int i11 = 0;
        boolean z7 = i8 > bArr2.length;
        if (z7) {
            int i12 = 0;
            while (true) {
                if (i12 < bArr2.length) {
                    if (bArr[i12] == bArr2[i12]) {
                        i12++;
                    }
                } else if (z7) {
                    hVar = new p173w2.h(bArr, i8);
                    sG = hVar.g(6);
                    if (sG == 18761) {
                        if (sG == 19789 && Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) sG));
                        }
                        byteOrder = ByteOrder.BIG_ENDIAN;
                    } else {
                        byteOrder = ByteOrder.LITTLE_ENDIAN;
                    }
                    byteBuffer = hVar.f30993a;
                    byteBuffer.order(byteOrder);
                    if (byteBuffer.remaining() - 10 >= 4) {
                        i9 = byteBuffer.getInt(10);
                    } else {
                        i9 = -1;
                    }
                    sG2 = hVar.g(i9 + 6);
                    while (i11 < sG2) {
                        i10 = (i11 * 12) + i9 + 8;
                        sG3 = hVar.g(i10);
                        if (sG3 == 274) {
                            sG4 = hVar.g(i10 + 2);
                            if (sG4 < s7 && sG4 <= 12) {
                                int i13 = i10 + 4;
                                int i14 = byteBuffer.remaining() - i13 >= 4 ? byteBuffer.getInt(i13) : -1;
                                if (i14 >= 0) {
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        StringBuilder sbD = O.D("Got tagIndex=", i11, " tagType=", sG3, " formatCode=");
                                        sbD.append((int) sG4);
                                        sbD.append(" componentCount=");
                                        sbD.append(i14);
                                        Log.d("DfltImageHeaderParser", sbD.toString());
                                    }
                                    int i15 = i14 + f3142b[sG4];
                                    if (i15 <= 4) {
                                        int i16 = i10 + 8;
                                        if (i16 < 0 || i16 > byteBuffer.remaining()) {
                                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                                Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i16 + " tagType=" + ((int) sG3));
                                            }
                                        } else {
                                            if (i15 >= 0 && i15 + i16 <= byteBuffer.remaining()) {
                                                return hVar.g(i16);
                                            }
                                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                                Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) sG3));
                                            }
                                        }
                                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) sG4));
                                    }
                                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Negative tiff component count");
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) sG4));
                            }
                        }
                        i11++;
                        s7 = 1;
                    }
                    return -1;
                }
            }
        } else if (z7) {
            hVar = new p173w2.h(bArr, i8);
            sG = hVar.g(6);
            if (sG == 18761) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            } else if (sG == 19789) {
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) sG));
                byteOrder = ByteOrder.BIG_ENDIAN;
            }
            byteBuffer = hVar.f30993a;
            byteBuffer.order(byteOrder);
            if (byteBuffer.remaining() - 10 >= 4) {
                i9 = byteBuffer.getInt(10);
            } else {
                i9 = -1;
            }
            sG2 = hVar.g(i9 + 6);
            while (i11 < sG2) {
                i10 = (i11 * 12) + i9 + 8;
                sG3 = hVar.g(i10);
                if (sG3 == 274) {
                    sG4 = hVar.g(i10 + 2);
                    if (sG4 < s7) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) sG4));
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) sG4));
                    }
                }
                i11++;
                s7 = 1;
            }
            return -1;
        }
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
        }
        return -1;
    }

    @Override // p173w2.f
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        p102n0.c.c(byteBuffer, "Argument must not be null");
        return f(new p173w2.h(byteBuffer));
    }

    @Override // p173w2.f
    public final int b(ByteBuffer byteBuffer, p196z2.h hVar) {
        p102n0.c.c(byteBuffer, "Argument must not be null");
        p173w2.h hVar2 = new p173w2.h(byteBuffer);
        p102n0.c.c(hVar, "Argument must not be null");
        return e(hVar2, hVar);
    }

    @Override // p173w2.f
    public final ImageHeaderParser$ImageType c(InputStream inputStream) {
        p102n0.c.c(inputStream, "Argument must not be null");
        return f(new p173w2.g(inputStream));
    }

    @Override // p173w2.f
    public final int d(InputStream inputStream, p196z2.h hVar) {
        p102n0.c.c(inputStream, "Argument must not be null");
        p173w2.g gVar = new p173w2.g(inputStream);
        p102n0.c.c(hVar, "Argument must not be null");
        return e(gVar, hVar);
    }
}

package com.google.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.protobuf.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2879b implements Q1 {
    protected int memoizedHashCode;

    @Deprecated
    public static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
        AbstractC2875a.a(iterable, (List) collection);
    }

    public static void checkByteStringIsUtf8(r rVar) {
        if (!rVar.o()) {
            throw new IllegalArgumentException("Byte string is not UTF-8.");
        }
    }

    public final String a(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    public abstract int getSerializedSize(InterfaceC2914j2 interfaceC2914j2);

    public z2 newUninitializedMessageException() {
        return new z2();
    }

    public byte[] toByteArray() {
        try {
            int serializedSize = getSerializedSize();
            byte[] bArr = new byte[serializedSize];
            Logger logger = AbstractC2970z.f24550d;
            C2964x c2964x = new C2964x(bArr, 0, serializedSize);
            writeTo(c2964x);
            if (c2964x.w0() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e8) {
            throw new RuntimeException(a("byte array"), e8);
        }
    }

    public r toByteString() {
        try {
            int serializedSize = getSerializedSize();
            C2939q c2939q = r.f24491H;
            byte[] bArr = new byte[serializedSize];
            Logger logger = AbstractC2970z.f24550d;
            C2964x c2964x = new C2964x(bArr, 0, serializedSize);
            writeTo(c2964x);
            if (c2964x.w0() == 0) {
                return new C2939q(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e8) {
            throw new RuntimeException(a("ByteString"), e8);
        }
    }

    public void writeDelimitedTo(OutputStream outputStream) {
        int serializedSize = getSerializedSize();
        int iS0 = AbstractC2970z.s0(serializedSize) + serializedSize;
        if (iS0 > 4096) {
            iS0 = 4096;
        }
        C2967y c2967y = new C2967y(outputStream, iS0);
        c2967y.Q0(serializedSize);
        writeTo(c2967y);
        if (c2967y.f24536h > 0) {
            c2967y.Y0();
        }
    }

    public void writeTo(OutputStream outputStream) {
        int serializedSize = getSerializedSize();
        Logger logger = AbstractC2970z.f24550d;
        if (serializedSize > 4096) {
            serializedSize = 4096;
        }
        C2967y c2967y = new C2967y(outputStream, serializedSize);
        writeTo(c2967y);
        if (c2967y.f24536h > 0) {
            c2967y.Y0();
        }
    }

    public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        AbstractC2875a.a(iterable, list);
    }
}

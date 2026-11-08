package W;

import A0.O;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public class b extends InputStream implements DataInput {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final DataInputStream f7244G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f7245H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ByteOrder f7246I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public byte[] f7247J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f7248K;

    public b(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
        this.f7248K = bArr.length;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f7244G.available();
    }

    public final void k(int i8) throws IOException {
        int i9 = 0;
        while (i9 < i8) {
            DataInputStream dataInputStream = this.f7244G;
            int i10 = i8 - i9;
            int iSkip = (int) dataInputStream.skip(i10);
            if (iSkip <= 0) {
                if (this.f7247J == null) {
                    this.f7247J = new byte[8192];
                }
                iSkip = dataInputStream.read(this.f7247J, 0, Math.min(8192, i10));
                if (iSkip == -1) {
                    throw new EOFException(O.y("Reached EOF while skipping ", i8, " bytes."));
                }
            }
            i9 += iSkip;
        }
        this.f7245H += i9;
    }

    @Override // java.io.InputStream
    public final void mark(int i8) {
        throw new UnsupportedOperationException("Mark is currently unsupported");
    }

    @Override // java.io.InputStream
    public final int read() {
        this.f7245H++;
        return this.f7244G.read();
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        this.f7245H++;
        return this.f7244G.readBoolean();
    }

    @Override // java.io.DataInput
    public final byte readByte() throws IOException {
        this.f7245H++;
        int i8 = this.f7244G.read();
        if (i8 >= 0) {
            return (byte) i8;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final char readChar() {
        this.f7245H += 2;
        return this.f7244G.readChar();
    }

    @Override // java.io.DataInput
    public final double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public final float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i8, int i9) throws IOException {
        this.f7245H += i9;
        this.f7244G.readFully(bArr, i8, i9);
    }

    @Override // java.io.DataInput
    public final int readInt() throws IOException {
        this.f7245H += 4;
        DataInputStream dataInputStream = this.f7244G;
        int i8 = dataInputStream.read();
        int i9 = dataInputStream.read();
        int i10 = dataInputStream.read();
        int i11 = dataInputStream.read();
        if ((i8 | i9 | i10 | i11) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f7246I;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return (i11 << 24) + (i10 << 16) + (i9 << 8) + i8;
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return (i8 << 24) + (i9 << 16) + (i10 << 8) + i11;
        }
        throw new IOException("Invalid byte order: " + this.f7246I);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        Log.d("ExifInterface", "Currently unsupported");
        return null;
    }

    @Override // java.io.DataInput
    public final long readLong() throws IOException {
        this.f7245H += 8;
        DataInputStream dataInputStream = this.f7244G;
        int i8 = dataInputStream.read();
        int i9 = dataInputStream.read();
        int i10 = dataInputStream.read();
        int i11 = dataInputStream.read();
        int i12 = dataInputStream.read();
        int i13 = dataInputStream.read();
        int i14 = dataInputStream.read();
        int i15 = dataInputStream.read();
        if ((i8 | i9 | i10 | i11 | i12 | i13 | i14 | i15) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f7246I;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return (((long) i15) << 56) + (((long) i14) << 48) + (((long) i13) << 40) + (((long) i12) << 32) + (((long) i11) << 24) + (((long) i10) << 16) + (((long) i9) << 8) + ((long) i8);
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return (((long) i8) << 56) + (((long) i9) << 48) + (((long) i10) << 40) + (((long) i11) << 32) + (((long) i12) << 24) + (((long) i13) << 16) + (((long) i14) << 8) + ((long) i15);
        }
        throw new IOException("Invalid byte order: " + this.f7246I);
    }

    @Override // java.io.DataInput
    public final short readShort() throws IOException {
        this.f7245H += 2;
        DataInputStream dataInputStream = this.f7244G;
        int i8 = dataInputStream.read();
        int i9 = dataInputStream.read();
        if ((i8 | i9) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f7246I;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return (short) ((i9 << 8) + i8);
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return (short) ((i8 << 8) + i9);
        }
        throw new IOException("Invalid byte order: " + this.f7246I);
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        this.f7245H += 2;
        return this.f7244G.readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        this.f7245H++;
        return this.f7244G.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws IOException {
        this.f7245H += 2;
        DataInputStream dataInputStream = this.f7244G;
        int i8 = dataInputStream.read();
        int i9 = dataInputStream.read();
        if ((i8 | i9) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f7246I;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return (i9 << 8) + i8;
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return (i8 << 8) + i9;
        }
        throw new IOException("Invalid byte order: " + this.f7246I);
    }

    @Override // java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException("Reset is currently unsupported");
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i8) {
        throw new UnsupportedOperationException("skipBytes is currently unsupported");
    }

    public b(InputStream inputStream) {
        this(inputStream, ByteOrder.BIG_ENDIAN);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) throws IOException {
        int i10 = this.f7244G.read(bArr, i8, i9);
        this.f7245H += i10;
        return i10;
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws IOException {
        this.f7245H += bArr.length;
        this.f7244G.readFully(bArr);
    }

    public b(InputStream inputStream, ByteOrder byteOrder) {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f7244G = dataInputStream;
        dataInputStream.mark(0);
        this.f7245H = 0;
        this.f7246I = byteOrder;
        this.f7248K = inputStream instanceof b ? ((b) inputStream).f7248K : -1;
    }
}

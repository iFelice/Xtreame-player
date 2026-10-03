package M1;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f4766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f4767d;

    public e(int i8, int i9, long j8, long j9) {
        this.f4764a = i8;
        this.f4765b = i9;
        this.f4766c = j8;
        this.f4767d = j9;
    }

    public static e a(File file) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            e eVar = new e(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return eVar;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void b(File file) throws IOException {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f4764a);
            dataOutputStream.writeInt(this.f4765b);
            dataOutputStream.writeLong(this.f4766c);
            dataOutputStream.writeLong(this.f4767d);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f4765b == eVar.f4765b && this.f4766c == eVar.f4766c && this.f4764a == eVar.f4764a && this.f4767d == eVar.f4767d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f4765b), Long.valueOf(this.f4766c), Integer.valueOf(this.f4764a), Long.valueOf(this.f4767d));
    }
}

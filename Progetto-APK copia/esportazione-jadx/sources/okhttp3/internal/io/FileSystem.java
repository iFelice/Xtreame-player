package okhttp3.internal.io;

import Q6.B;
import Q6.C0331d;
import Q6.C0332e;
import Q6.D;
import Q6.G;
import Q6.t;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Logger;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public interface FileSystem {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final FileSystem SYSTEM = new Companion.SystemFileSystem();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public static final class SystemFileSystem implements FileSystem {
            @Override // okhttp3.internal.io.FileSystem
            public B appendingSink(File file) {
                q0.h(file, "file");
                try {
                    Logger logger = t.f6082a;
                    return new C0331d(new FileOutputStream(file, true), new G());
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    Logger logger2 = t.f6082a;
                    return new C0331d(new FileOutputStream(file, true), new G());
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public void delete(File file) throws IOException {
                q0.h(file, "file");
                if (file.delete() || !file.exists()) {
                    return;
                }
                throw new IOException("failed to delete " + file);
            }

            @Override // okhttp3.internal.io.FileSystem
            public void deleteContents(File file) throws IOException {
                q0.h(file, "directory");
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    throw new IOException("not a readable directory: " + file);
                }
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory()) {
                        deleteContents(file2);
                    }
                    if (!file2.delete()) {
                        throw new IOException("failed to delete " + file2);
                    }
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public boolean exists(File file) {
                q0.h(file, "file");
                return file.exists();
            }

            @Override // okhttp3.internal.io.FileSystem
            public void rename(File file, File file2) throws IOException {
                q0.h(file, "from");
                q0.h(file2, "to");
                delete(file2);
                if (file.renameTo(file2)) {
                    return;
                }
                throw new IOException("failed to rename " + file + " to " + file2);
            }

            @Override // okhttp3.internal.io.FileSystem
            public B sink(File file) {
                q0.h(file, "file");
                try {
                    Logger logger = t.f6082a;
                    return new C0331d(new FileOutputStream(file, false), new G());
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    Logger logger2 = t.f6082a;
                    return new C0331d(new FileOutputStream(file, false), new G());
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public long size(File file) {
                q0.h(file, "file");
                return file.length();
            }

            @Override // okhttp3.internal.io.FileSystem
            public D source(File file) {
                q0.h(file, "file");
                Logger logger = t.f6082a;
                return new C0332e(new FileInputStream(file), G.NONE);
            }

            public String toString() {
                return "FileSystem.SYSTEM";
            }
        }

        private Companion() {
        }
    }

    B appendingSink(File file);

    void delete(File file);

    void deleteContents(File file);

    boolean exists(File file);

    void rename(File file, File file2);

    B sink(File file);

    long size(File file);

    D source(File file);
}

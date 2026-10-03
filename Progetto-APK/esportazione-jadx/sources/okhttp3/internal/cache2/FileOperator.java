package okhttp3.internal.cache2;

import Q6.j;
import java.io.IOException;
import java.nio.channels.FileChannel;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        q0.h(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    public final void read(long j8, j jVar, long j9) throws IOException {
        q0.h(jVar, "sink");
        if (j9 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j9 > 0) {
            long jTransferTo = this.fileChannel.transferTo(j8, j9, jVar);
            j8 += jTransferTo;
            j9 -= jTransferTo;
        }
    }

    public final void write(long j8, j jVar, long j9) throws IOException {
        q0.h(jVar, "source");
        if (j9 < 0 || j9 > jVar.f6064H) {
            throw new IndexOutOfBoundsException();
        }
        long j10 = j8;
        long j11 = j9;
        while (j11 > 0) {
            long jTransferFrom = this.fileChannel.transferFrom(jVar, j10, j11);
            j10 += jTransferFrom;
            j11 -= jTransferFrom;
        }
    }
}

package p102n0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public interface g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteBuffer f27326a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    void a();

    boolean b();

    ByteBuffer c();

    void d(ByteBuffer byteBuffer);

    void e();

    e f(e eVar);

    void flush();

    boolean isActive();
}

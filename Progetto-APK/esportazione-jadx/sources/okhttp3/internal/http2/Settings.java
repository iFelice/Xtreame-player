package okhttp3.internal.http2;

import D6.e;
import com.google.android.gms.common.api.d;
import java.util.Arrays;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Settings {
    public static final int COUNT = 10;
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_INITIAL_WINDOW_SIZE = 65535;
    public static final int ENABLE_PUSH = 2;
    public static final int HEADER_TABLE_SIZE = 1;
    public static final int INITIAL_WINDOW_SIZE = 7;
    public static final int MAX_CONCURRENT_STREAMS = 4;
    public static final int MAX_FRAME_SIZE = 5;
    public static final int MAX_HEADER_LIST_SIZE = 6;
    private int set;
    private final int[] values = new int[10];

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }
    }

    public final void clear() {
        this.set = 0;
        int[] iArr = this.values;
        int length = iArr.length;
        q0.h(iArr, "<this>");
        Arrays.fill(iArr, 0, length, 0);
    }

    public final int get(int i8) {
        return this.values[i8];
    }

    public final boolean getEnablePush(boolean z7) {
        if ((this.set & 4) != 0) {
            return this.values[2] == 1;
        }
        return z7;
    }

    public final int getHeaderTableSize() {
        if ((this.set & 2) != 0) {
            return this.values[1];
        }
        return -1;
    }

    public final int getInitialWindowSize() {
        return (this.set & 128) != 0 ? this.values[7] : DEFAULT_INITIAL_WINDOW_SIZE;
    }

    public final int getMaxConcurrentStreams() {
        return (this.set & 16) != 0 ? this.values[4] : d.API_PRIORITY_OTHER;
    }

    public final int getMaxFrameSize(int i8) {
        return (this.set & 32) != 0 ? this.values[5] : i8;
    }

    public final int getMaxHeaderListSize(int i8) {
        return (this.set & 64) != 0 ? this.values[6] : i8;
    }

    public final boolean isSet(int i8) {
        return ((1 << i8) & this.set) != 0;
    }

    public final void merge(Settings settings) {
        q0.h(settings, "other");
        for (int i8 = 0; i8 < 10; i8++) {
            if (settings.isSet(i8)) {
                set(i8, settings.get(i8));
            }
        }
    }

    public final Settings set(int i8, int i9) {
        if (i8 >= 0) {
            int[] iArr = this.values;
            if (i8 < iArr.length) {
                this.set = (1 << i8) | this.set;
                iArr[i8] = i9;
            }
        }
        return this;
    }

    public final int size() {
        return Integer.bitCount(this.set);
    }
}

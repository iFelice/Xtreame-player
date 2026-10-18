package androidx.media3.extractor;

import W0.y;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p117p0.D;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class FlacStreamMetadata {
    public static final int NOT_IN_LOOKUP_TABLE = -1;
    private static final String TAG = "FlacStreamMetadata";
    public final int bitsPerSample;
    public final int bitsPerSampleLookupKey;
    public final int channels;
    public final int maxBlockSizeSamples;
    public final int maxFrameSize;
    private final N metadata;
    public final int minBlockSizeSamples;
    public final int minFrameSize;
    public final int sampleRate;
    public final int sampleRateLookupKey;
    public final y seekTable;
    public final long totalSamples;

    public FlacStreamMetadata(byte[] bArr, int i8) {
        D d6 = new D(bArr, 0, (Object) null);
        d6.r(i8 * 8);
        this.minBlockSizeSamples = d6.i(16);
        this.maxBlockSizeSamples = d6.i(16);
        this.minFrameSize = d6.i(24);
        this.maxFrameSize = d6.i(24);
        int i9 = d6.i(20);
        this.sampleRate = i9;
        this.sampleRateLookupKey = getSampleRateLookupKey(i9);
        this.channels = d6.i(3) + 1;
        int i10 = d6.i(5) + 1;
        this.bitsPerSample = i10;
        this.bitsPerSampleLookupKey = getBitsPerSampleLookupKey(i10);
        this.totalSamples = d6.k(36);
        this.seekTable = null;
        this.metadata = null;
    }

    private static N concatenateVorbisMetadata(List<String> list, List<PictureFrame> list2) {
        N nT = H1.t(list);
        if (nT == null && list2.isEmpty()) {
            return null;
        }
        return new N(list2).b(nT);
    }

    private static int getBitsPerSampleLookupKey(int i8) {
        if (i8 == 8) {
            return 1;
        }
        if (i8 == 12) {
            return 2;
        }
        if (i8 == 16) {
            return 4;
        }
        if (i8 == 20) {
            return 5;
        }
        if (i8 != 24) {
            return i8 != 32 ? -1 : 7;
        }
        return 6;
    }

    private static int getSampleRateLookupKey(int i8) {
        switch (i8) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public FlacStreamMetadata copyWithPictureFrames(List<PictureFrame> list) {
        return new FlacStreamMetadata(this.minBlockSizeSamples, this.maxBlockSizeSamples, this.minFrameSize, this.maxFrameSize, this.sampleRate, this.channels, this.bitsPerSample, this.totalSamples, this.seekTable, getMetadataCopyWithAppendedEntriesFrom(new N(list)));
    }

    public FlacStreamMetadata copyWithSeekTable(y yVar) {
        return new FlacStreamMetadata(this.minBlockSizeSamples, this.maxBlockSizeSamples, this.minFrameSize, this.maxFrameSize, this.sampleRate, this.channels, this.bitsPerSample, this.totalSamples, yVar, this.metadata);
    }

    public FlacStreamMetadata copyWithVorbisComments(List<String> list) {
        return new FlacStreamMetadata(this.minBlockSizeSamples, this.maxBlockSizeSamples, this.minFrameSize, this.maxFrameSize, this.sampleRate, this.channels, this.bitsPerSample, this.totalSamples, this.seekTable, getMetadataCopyWithAppendedEntriesFrom(H1.t(list)));
    }

    public long getApproxBytesPerFrame() {
        long j8;
        long j9;
        int i8 = this.maxFrameSize;
        if (i8 > 0) {
            j8 = (((long) i8) + ((long) this.minFrameSize)) / 2;
            j9 = 1;
        } else {
            int i9 = this.minBlockSizeSamples;
            j8 = ((((i9 != this.maxBlockSizeSamples || i9 <= 0) ? PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : i9) * ((long) this.channels)) * ((long) this.bitsPerSample)) / 8;
            j9 = 64;
        }
        return j8 + j9;
    }

    public int getDecodedBitrate() {
        return this.bitsPerSample * this.sampleRate * this.channels;
    }

    public long getDurationUs() {
        long j8 = this.totalSamples;
        if (j8 == 0) {
            return -9223372036854775807L;
        }
        return (j8 * 1000000) / ((long) this.sampleRate);
    }

    public C3136t getFormat(byte[] bArr, N n7) {
        bArr[4] = -128;
        int i8 = this.maxFrameSize;
        if (i8 <= 0) {
            i8 = -1;
        }
        N metadataCopyWithAppendedEntriesFrom = getMetadataCopyWithAppendedEntriesFrom(n7);
        C3135s c3135s = new C3135s();
        c3135s.f26996n = O.p("audio/flac");
        c3135s.f26997o = i8;
        c3135s.f26973F = this.channels;
        c3135s.f26974G = this.sampleRate;
        int i9 = this.bitsPerSample;
        String str = M.f28050a;
        c3135s.f26975H = M.A(i9, ByteOrder.LITTLE_ENDIAN);
        c3135s.f26999q = Collections.singletonList(bArr);
        c3135s.f26993k = metadataCopyWithAppendedEntriesFrom;
        return c3135s.a();
    }

    public int getMaxDecodedFrameSize() {
        return (this.bitsPerSample / 8) * this.maxBlockSizeSamples * this.channels;
    }

    public N getMetadataCopyWithAppendedEntriesFrom(N n7) {
        N n8 = this.metadata;
        return n8 == null ? n7 : n8.b(n7);
    }

    public long getSampleNumber(long j8) {
        return M.j((j8 * ((long) this.sampleRate)) / 1000000, 0L, this.totalSamples - 1);
    }

    public FlacStreamMetadata(int i8, int i9, int i10, int i11, int i12, int i13, int i14, long j8, ArrayList<String> arrayList, ArrayList<PictureFrame> arrayList2) {
        this(i8, i9, i10, i11, i12, i13, i14, j8, (y) null, concatenateVorbisMetadata(arrayList, arrayList2));
    }

    private FlacStreamMetadata(int i8, int i9, int i10, int i11, int i12, int i13, int i14, long j8, y yVar, N n7) {
        this.minBlockSizeSamples = i8;
        this.maxBlockSizeSamples = i9;
        this.minFrameSize = i10;
        this.maxFrameSize = i11;
        this.sampleRate = i12;
        this.sampleRateLookupKey = getSampleRateLookupKey(i12);
        this.channels = i13;
        this.bitsPerSample = i14;
        this.bitsPerSampleLookupKey = getBitsPerSampleLookupKey(i14);
        this.totalSamples = j8;
        this.seekTable = yVar;
        this.metadata = n7;
    }
}

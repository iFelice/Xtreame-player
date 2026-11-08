package okhttp3.internal.http2;

import D6.e;
import Q6.D;
import Q6.l;
import Q6.m;
import com.google.android.gms.common.api.d;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p113o3.r;
import p162u6.j;
import p162u6.o;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Hpack {
    public static final Hpack INSTANCE;
    private static final Map<m, Integer> NAME_TO_FIRST_INDEX;
    private static final int PREFIX_4_BITS = 15;
    private static final int PREFIX_5_BITS = 31;
    private static final int PREFIX_6_BITS = 63;
    private static final int PREFIX_7_BITS = 127;
    private static final int SETTINGS_HEADER_TABLE_SIZE = 4096;
    private static final int SETTINGS_HEADER_TABLE_SIZE_LIMIT = 16384;
    private static final Header[] STATIC_HEADER_TABLE;

    public static final class Reader {
        public Header[] dynamicTable;
        public int dynamicTableByteCount;
        public int headerCount;
        private final List<Header> headerList;
        private final int headerTableSizeSetting;
        private int maxDynamicTableByteCount;
        private int nextHeaderIndex;
        private final l source;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Reader(D d6, int i8) {
            this(d6, i8, 0, 4, null);
            q0.h(d6, "source");
        }

        private final void adjustDynamicTableByteCount() {
            int i8 = this.maxDynamicTableByteCount;
            int i9 = this.dynamicTableByteCount;
            if (i8 < i9) {
                if (i8 == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(i9 - i8);
                }
            }
        }

        private final void clearDynamicTable() {
            Header[] headerArr = this.dynamicTable;
            j.P(headerArr, 0, headerArr.length);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private final int dynamicTableIndex(int i8) {
            return this.nextHeaderIndex + 1 + i8;
        }

        private final int evictToRecoverBytes(int i8) {
            int i9;
            int i10 = 0;
            if (i8 > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i9 = this.nextHeaderIndex;
                    if (length < i9 || i8 <= 0) {
                        break;
                    }
                    Header header = this.dynamicTable[length];
                    q0.e(header);
                    int i11 = header.hpackSize;
                    i8 -= i11;
                    this.dynamicTableByteCount -= i11;
                    this.headerCount--;
                    i10++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i9 + 1, headerArr, i9 + 1 + i10, this.headerCount);
                this.nextHeaderIndex += i10;
            }
            return i10;
        }

        private final m getName(int i8) throws IOException {
            if (isStaticHeader(i8)) {
                return Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[i8].name;
            }
            int iDynamicTableIndex = dynamicTableIndex(i8 - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
            if (iDynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (iDynamicTableIndex < headerArr.length) {
                    Header header = headerArr[iDynamicTableIndex];
                    q0.e(header);
                    return header.name;
                }
            }
            throw new IOException("Header index too large " + (i8 + 1));
        }

        private final void insertIntoDynamicTable(int i8, Header header) {
            this.headerList.add(header);
            int i9 = header.hpackSize;
            if (i8 != -1) {
                Header header2 = this.dynamicTable[dynamicTableIndex(i8)];
                q0.e(header2);
                i9 -= header2.hpackSize;
            }
            int i10 = this.maxDynamicTableByteCount;
            if (i9 > i10) {
                clearDynamicTable();
                return;
            }
            int iEvictToRecoverBytes = evictToRecoverBytes((this.dynamicTableByteCount + i9) - i10);
            if (i8 == -1) {
                int i11 = this.headerCount + 1;
                Header[] headerArr = this.dynamicTable;
                if (i11 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.nextHeaderIndex = this.dynamicTable.length - 1;
                    this.dynamicTable = headerArr2;
                }
                int i12 = this.nextHeaderIndex;
                this.nextHeaderIndex = i12 - 1;
                this.dynamicTable[i12] = header;
                this.headerCount++;
            } else {
                this.dynamicTable[dynamicTableIndex(i8) + iEvictToRecoverBytes + i8] = header;
            }
            this.dynamicTableByteCount += i9;
        }

        private final boolean isStaticHeader(int i8) {
            return i8 >= 0 && i8 <= Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length - 1;
        }

        private final int readByte() {
            return Util.and(this.source.readByte(), 255);
        }

        private final void readIndexedHeader(int i8) throws IOException {
            if (isStaticHeader(i8)) {
                this.headerList.add(Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[i8]);
                return;
            }
            int iDynamicTableIndex = dynamicTableIndex(i8 - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
            if (iDynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (iDynamicTableIndex < headerArr.length) {
                    List<Header> list = this.headerList;
                    Header header = headerArr[iDynamicTableIndex];
                    q0.e(header);
                    list.add(header);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i8 + 1));
        }

        private final void readLiteralHeaderWithIncrementalIndexingIndexedName(int i8) {
            insertIntoDynamicTable(-1, new Header(getName(i8), readByteString()));
        }

        private final void readLiteralHeaderWithIncrementalIndexingNewName() {
            insertIntoDynamicTable(-1, new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
        }

        private final void readLiteralHeaderWithoutIndexingIndexedName(int i8) throws IOException {
            this.headerList.add(new Header(getName(i8), readByteString()));
        }

        private final void readLiteralHeaderWithoutIndexingNewName() throws IOException {
            this.headerList.add(new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
        }

        public final List<Header> getAndResetHeaderList() {
            List<Header> listC = o.C(this.headerList);
            this.headerList.clear();
            return listC;
        }

        public final int maxDynamicTableByteCount() {
            return this.maxDynamicTableByteCount;
        }

        public final m readByteString() {
            int i8 = readByte();
            boolean z7 = (i8 & 128) == 128;
            long j8 = readInt(i8, 127);
            if (!z7) {
                return this.source.d(j8);
            }
            Q6.j jVar = new Q6.j();
            Huffman.INSTANCE.decode(this.source, j8, jVar);
            return jVar.d(jVar.f6064H);
        }

        public final void readHeaders() throws IOException {
            while (!this.source.q()) {
                int iAnd = Util.and(this.source.readByte(), 255);
                if (iAnd == 128) {
                    throw new IOException("index == 0");
                }
                if ((iAnd & 128) == 128) {
                    readIndexedHeader(readInt(iAnd, 127) - 1);
                } else if (iAnd == 64) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((iAnd & 64) == 64) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(iAnd, Hpack.PREFIX_6_BITS) - 1);
                } else if ((iAnd & 32) == 32) {
                    int i8 = readInt(iAnd, 31);
                    this.maxDynamicTableByteCount = i8;
                    if (i8 < 0 || i8 > this.headerTableSizeSetting) {
                        throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
                    }
                    adjustDynamicTableByteCount();
                } else if (iAnd == 16 || iAnd == 0) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(iAnd, 15) - 1);
                }
            }
        }

        public final int readInt(int i8, int i9) {
            int i10 = i8 & i9;
            if (i10 < i9) {
                return i10;
            }
            int i11 = 0;
            while (true) {
                int i12 = readByte();
                if ((i12 & 128) == 0) {
                    return i9 + (i12 << i11);
                }
                i9 += (i12 & 127) << i11;
                i11 += 7;
            }
        }

        public Reader(D d6, int i8, int i9) {
            q0.h(d6, "source");
            this.headerTableSizeSetting = i8;
            this.maxDynamicTableByteCount = i9;
            this.headerList = new ArrayList();
            this.source = r.c(d6);
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = 7;
        }

        public /* synthetic */ Reader(D d6, int i8, int i9, int i10, e eVar) {
            this(d6, i8, (i10 & 4) != 0 ? i8 : i9);
        }
    }

    public static final class Writer {
        public Header[] dynamicTable;
        public int dynamicTableByteCount;
        private boolean emitDynamicTableSizeUpdate;
        public int headerCount;
        public int headerTableSizeSetting;
        public int maxDynamicTableByteCount;
        private int nextHeaderIndex;
        private final Q6.j out;
        private int smallestHeaderTableSizeSetting;
        private final boolean useCompression;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Writer(int i8, Q6.j jVar) {
            this(i8, false, jVar, 2, null);
            q0.h(jVar, "out");
        }

        private final void adjustDynamicTableByteCount() {
            int i8 = this.maxDynamicTableByteCount;
            int i9 = this.dynamicTableByteCount;
            if (i8 < i9) {
                if (i8 == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(i9 - i8);
                }
            }
        }

        private final void clearDynamicTable() {
            Header[] headerArr = this.dynamicTable;
            j.P(headerArr, 0, headerArr.length);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private final int evictToRecoverBytes(int i8) {
            int i9;
            int i10 = 0;
            if (i8 > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i9 = this.nextHeaderIndex;
                    if (length < i9 || i8 <= 0) {
                        break;
                    }
                    Header header = this.dynamicTable[length];
                    q0.e(header);
                    i8 -= header.hpackSize;
                    int i11 = this.dynamicTableByteCount;
                    Header header2 = this.dynamicTable[length];
                    q0.e(header2);
                    this.dynamicTableByteCount = i11 - header2.hpackSize;
                    this.headerCount--;
                    i10++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i9 + 1, headerArr, i9 + 1 + i10, this.headerCount);
                Header[] headerArr2 = this.dynamicTable;
                int i12 = this.nextHeaderIndex;
                Arrays.fill(headerArr2, i12 + 1, i12 + 1 + i10, (Object) null);
                this.nextHeaderIndex += i10;
            }
            return i10;
        }

        private final void insertIntoDynamicTable(Header header) {
            int i8 = header.hpackSize;
            int i9 = this.maxDynamicTableByteCount;
            if (i8 > i9) {
                clearDynamicTable();
                return;
            }
            evictToRecoverBytes((this.dynamicTableByteCount + i8) - i9);
            int i10 = this.headerCount + 1;
            Header[] headerArr = this.dynamicTable;
            if (i10 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.dynamicTable = headerArr2;
            }
            int i11 = this.nextHeaderIndex;
            this.nextHeaderIndex = i11 - 1;
            this.dynamicTable[i11] = header;
            this.headerCount++;
            this.dynamicTableByteCount += i8;
        }

        public final void resizeHeaderTable(int i8) {
            this.headerTableSizeSetting = i8;
            int iMin = Math.min(i8, 16384);
            int i9 = this.maxDynamicTableByteCount;
            if (i9 == iMin) {
                return;
            }
            if (iMin < i9) {
                this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, iMin);
            }
            this.emitDynamicTableSizeUpdate = true;
            this.maxDynamicTableByteCount = iMin;
            adjustDynamicTableByteCount();
        }

        public final void writeByteString(m mVar) throws EOFException {
            q0.h(mVar, "data");
            if (this.useCompression) {
                Huffman huffman = Huffman.INSTANCE;
                if (huffman.encodedLength(mVar) < mVar.c()) {
                    Q6.j jVar = new Q6.j();
                    huffman.encode(mVar, jVar);
                    m mVarD = jVar.d(jVar.f6064H);
                    writeInt(mVarD.c(), 127, 128);
                    this.out.m0(mVarD);
                    return;
                }
            }
            writeInt(mVar.c(), 127, 0);
            this.out.m0(mVar);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x007e  */
        /* JADX WARN: Code duplicated, block: B:28:0x0087  */
        /* JADX WARN: Code duplicated, block: B:30:0x0096  */
        /* JADX WARN: Code duplicated, block: B:33:0x00b1 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:34:0x00b3  */
        /* JADX WARN: Code duplicated, block: B:37:0x00c4  */
        /* JADX WARN: Code duplicated, block: B:38:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
        /* JADX WARN: Code duplicated, block: B:41:0x00df  */
        /* JADX WARN: Code duplicated, block: B:46:0x0104  */
        /* JADX WARN: Code duplicated, block: B:55:0x00a5 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:57:0x00bf A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:58:0x00bf A[SYNTHETIC] */
        public final void writeHeaders(List<Header> list) throws EOFException {
            int length;
            int length2;
            m mVar;
            int i8;
            int length3;
            Header header;
            Header header2;
            q0.h(list, "headerBlock");
            if (this.emitDynamicTableSizeUpdate) {
                int i9 = this.smallestHeaderTableSizeSetting;
                if (i9 < this.maxDynamicTableByteCount) {
                    writeInt(i9, 31, 32);
                }
                this.emitDynamicTableSizeUpdate = false;
                this.smallestHeaderTableSizeSetting = d.API_PRIORITY_OTHER;
                writeInt(this.maxDynamicTableByteCount, 31, 32);
            }
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Header header3 = list.get(i10);
                m mVarJ = header3.name.j();
                m mVar2 = header3.value;
                Hpack hpack = Hpack.INSTANCE;
                Integer num = hpack.getNAME_TO_FIRST_INDEX().get(mVarJ);
                if (num != null) {
                    int iIntValue = num.intValue();
                    length2 = iIntValue + 1;
                    if (2 <= length2 && length2 < 8) {
                        if (q0.c(hpack.getSTATIC_HEADER_TABLE()[iIntValue].value, mVar2)) {
                            length = length2;
                        } else if (q0.c(hpack.getSTATIC_HEADER_TABLE()[length2].value, mVar2)) {
                            length = length2;
                            length2 = iIntValue + 2;
                        }
                        if (length2 == -1) {
                            length3 = this.dynamicTable.length;
                            for (i8 = this.nextHeaderIndex + 1; i8 < length3; i8++) {
                                header = this.dynamicTable[i8];
                                q0.e(header);
                                if (q0.c(header.name, mVarJ)) {
                                    header2 = this.dynamicTable[i8];
                                    q0.e(header2);
                                    if (q0.c(header2.value, mVar2)) {
                                        length2 = Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length + (i8 - this.nextHeaderIndex);
                                        break;
                                    } else if (length == -1) {
                                        length = (i8 - this.nextHeaderIndex) + Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length;
                                    }
                                }
                            }
                        }
                        if (length2 != -1) {
                            writeInt(length2, 127, 128);
                        } else if (length == -1) {
                            this.out.o0(64);
                            writeByteString(mVarJ);
                            writeByteString(mVar2);
                            insertIntoDynamicTable(header3);
                        } else {
                            mVar = Header.PSEUDO_PREFIX;
                            mVarJ.getClass();
                            q0.h(mVar, "prefix");
                            if (mVarJ.i(mVar, mVar.c()) || q0.c(Header.TARGET_AUTHORITY, mVarJ)) {
                                writeInt(length, Hpack.PREFIX_6_BITS, 64);
                                writeByteString(mVar2);
                                insertIntoDynamicTable(header3);
                            } else {
                                writeInt(length, 15, 0);
                                writeByteString(mVar2);
                            }
                        }
                    }
                    length = length2;
                } else {
                    length = -1;
                }
                length2 = -1;
                if (length2 == -1) {
                    length3 = this.dynamicTable.length;
                    while (i8 < length3) {
                        header = this.dynamicTable[i8];
                        q0.e(header);
                        if (q0.c(header.name, mVarJ)) {
                            header2 = this.dynamicTable[i8];
                            q0.e(header2);
                            if (q0.c(header2.value, mVar2)) {
                                length2 = Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length + (i8 - this.nextHeaderIndex);
                                break;
                            } else if (length == -1) {
                                length = (i8 - this.nextHeaderIndex) + Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length;
                            }
                        }
                    }
                }
                if (length2 != -1) {
                    writeInt(length2, 127, 128);
                } else if (length == -1) {
                    this.out.o0(64);
                    writeByteString(mVarJ);
                    writeByteString(mVar2);
                    insertIntoDynamicTable(header3);
                } else {
                    mVar = Header.PSEUDO_PREFIX;
                    mVarJ.getClass();
                    q0.h(mVar, "prefix");
                    if (mVarJ.i(mVar, mVar.c())) {
                        writeInt(length, Hpack.PREFIX_6_BITS, 64);
                        writeByteString(mVar2);
                        insertIntoDynamicTable(header3);
                    } else {
                        writeInt(length, Hpack.PREFIX_6_BITS, 64);
                        writeByteString(mVar2);
                        insertIntoDynamicTable(header3);
                    }
                }
            }
        }

        public final void writeInt(int i8, int i9, int i10) {
            if (i8 < i9) {
                this.out.o0(i8 | i10);
                return;
            }
            this.out.o0(i10 | i9);
            int i11 = i8 - i9;
            while (i11 >= 128) {
                this.out.o0(128 | (i11 & 127));
                i11 >>>= 7;
            }
            this.out.o0(i11);
        }

        public Writer(int i8, boolean z7, Q6.j jVar) {
            q0.h(jVar, "out");
            this.headerTableSizeSetting = i8;
            this.useCompression = z7;
            this.out = jVar;
            this.smallestHeaderTableSizeSetting = d.API_PRIORITY_OTHER;
            this.maxDynamicTableByteCount = i8;
            Header[] headerArr = new Header[8];
            this.dynamicTable = headerArr;
            this.nextHeaderIndex = headerArr.length - 1;
        }

        public /* synthetic */ Writer(int i8, boolean z7, Q6.j jVar, int i9, e eVar) {
            this((i9 & 1) != 0 ? Hpack.SETTINGS_HEADER_TABLE_SIZE : i8, (i9 & 2) != 0 ? true : z7, jVar);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Writer(Q6.j jVar) {
            this(0, false, jVar, 3, null);
            q0.h(jVar, "out");
        }
    }

    static {
        Hpack hpack = new Hpack();
        INSTANCE = hpack;
        Header header = new Header(Header.TARGET_AUTHORITY, HttpUrl.FRAGMENT_ENCODE_SET);
        m mVar = Header.TARGET_METHOD;
        Header header2 = new Header(mVar, "GET");
        Header header3 = new Header(mVar, "POST");
        m mVar2 = Header.TARGET_PATH;
        Header header4 = new Header(mVar2, MqttTopic.TOPIC_LEVEL_SEPARATOR);
        Header header5 = new Header(mVar2, "/index.html");
        m mVar3 = Header.TARGET_SCHEME;
        Header header6 = new Header(mVar3, "http");
        Header header7 = new Header(mVar3, "https");
        m mVar4 = Header.RESPONSE_STATUS;
        STATIC_HEADER_TABLE = new Header[]{header, header2, header3, header4, header5, header6, header7, new Header(mVar4, "200"), new Header(mVar4, "204"), new Header(mVar4, "206"), new Header(mVar4, "304"), new Header(mVar4, "400"), new Header(mVar4, "404"), new Header(mVar4, "500"), new Header("accept-charset", HttpUrl.FRAGMENT_ENCODE_SET), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", HttpUrl.FRAGMENT_ENCODE_SET), new Header("accept-ranges", HttpUrl.FRAGMENT_ENCODE_SET), new Header("accept", HttpUrl.FRAGMENT_ENCODE_SET), new Header("access-control-allow-origin", HttpUrl.FRAGMENT_ENCODE_SET), new Header("age", HttpUrl.FRAGMENT_ENCODE_SET), new Header("allow", HttpUrl.FRAGMENT_ENCODE_SET), new Header("authorization", HttpUrl.FRAGMENT_ENCODE_SET), new Header("cache-control", HttpUrl.FRAGMENT_ENCODE_SET), new Header("content-disposition", HttpUrl.FRAGMENT_ENCODE_SET), new Header("content-encoding", HttpUrl.FRAGMENT_ENCODE_SET), new Header("content-language", HttpUrl.FRAGMENT_ENCODE_SET), new Header("content-length", HttpUrl.FRAGMENT_ENCODE_SET), new Header("content-location", HttpUrl.FRAGMENT_ENCODE_SET), new Header("content-range", HttpUrl.FRAGMENT_ENCODE_SET), new Header("content-type", HttpUrl.FRAGMENT_ENCODE_SET), new Header("cookie", HttpUrl.FRAGMENT_ENCODE_SET), new Header("date", HttpUrl.FRAGMENT_ENCODE_SET), new Header("etag", HttpUrl.FRAGMENT_ENCODE_SET), new Header("expect", HttpUrl.FRAGMENT_ENCODE_SET), new Header("expires", HttpUrl.FRAGMENT_ENCODE_SET), new Header("from", HttpUrl.FRAGMENT_ENCODE_SET), new Header("host", HttpUrl.FRAGMENT_ENCODE_SET), new Header("if-match", HttpUrl.FRAGMENT_ENCODE_SET), new Header("if-modified-since", HttpUrl.FRAGMENT_ENCODE_SET), new Header("if-none-match", HttpUrl.FRAGMENT_ENCODE_SET), new Header("if-range", HttpUrl.FRAGMENT_ENCODE_SET), new Header("if-unmodified-since", HttpUrl.FRAGMENT_ENCODE_SET), new Header("last-modified", HttpUrl.FRAGMENT_ENCODE_SET), new Header("link", HttpUrl.FRAGMENT_ENCODE_SET), new Header("location", HttpUrl.FRAGMENT_ENCODE_SET), new Header("max-forwards", HttpUrl.FRAGMENT_ENCODE_SET), new Header("proxy-authenticate", HttpUrl.FRAGMENT_ENCODE_SET), new Header("proxy-authorization", HttpUrl.FRAGMENT_ENCODE_SET), new Header("range", HttpUrl.FRAGMENT_ENCODE_SET), new Header("referer", HttpUrl.FRAGMENT_ENCODE_SET), new Header("refresh", HttpUrl.FRAGMENT_ENCODE_SET), new Header("retry-after", HttpUrl.FRAGMENT_ENCODE_SET), new Header("server", HttpUrl.FRAGMENT_ENCODE_SET), new Header("set-cookie", HttpUrl.FRAGMENT_ENCODE_SET), new Header("strict-transport-security", HttpUrl.FRAGMENT_ENCODE_SET), new Header("transfer-encoding", HttpUrl.FRAGMENT_ENCODE_SET), new Header("user-agent", HttpUrl.FRAGMENT_ENCODE_SET), new Header("vary", HttpUrl.FRAGMENT_ENCODE_SET), new Header("via", HttpUrl.FRAGMENT_ENCODE_SET), new Header("www-authenticate", HttpUrl.FRAGMENT_ENCODE_SET)};
        NAME_TO_FIRST_INDEX = hpack.nameToFirstIndex();
    }

    private Hpack() {
    }

    private final Map<m, Integer> nameToFirstIndex() {
        Header[] headerArr = STATIC_HEADER_TABLE;
        LinkedHashMap linkedHashMap = new LinkedHashMap(headerArr.length);
        int length = headerArr.length;
        for (int i8 = 0; i8 < length; i8++) {
            Header[] headerArr2 = STATIC_HEADER_TABLE;
            if (!linkedHashMap.containsKey(headerArr2[i8].name)) {
                linkedHashMap.put(headerArr2[i8].name, Integer.valueOf(i8));
            }
        }
        Map<m, Integer> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        q0.g(mapUnmodifiableMap, "unmodifiableMap(result)");
        return mapUnmodifiableMap;
    }

    public final m checkLowercase(m mVar) throws IOException {
        q0.h(mVar, "name");
        int iC = mVar.c();
        for (int i8 = 0; i8 < iC; i8++) {
            byte bF = mVar.f(i8);
            if (65 <= bF && bF < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: ".concat(mVar.k()));
            }
        }
        return mVar;
    }

    public final Map<m, Integer> getNAME_TO_FIRST_INDEX() {
        return NAME_TO_FIRST_INDEX;
    }

    public final Header[] getSTATIC_HEADER_TABLE() {
        return STATIC_HEADER_TABLE;
    }
}

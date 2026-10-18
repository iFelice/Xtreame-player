package com.google.gson.stream;

import A0.O;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.protobuf.U2;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class JsonReader implements Closeable {
    static final int BUFFER_SIZE = 1024;
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final Reader in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int[] stack;
    private boolean lenient = false;
    private final char[] buffer = new char[BUFFER_SIZE];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;
    private int stackSize = 1;

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            @Override // com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int iDoPeek = jsonReader.peeked;
                if (iDoPeek == 0) {
                    iDoPeek = jsonReader.doPeek();
                }
                if (iDoPeek == 13) {
                    jsonReader.peeked = 9;
                    return;
                }
                if (iDoPeek == 12) {
                    jsonReader.peeked = 8;
                } else {
                    if (iDoPeek == 14) {
                        jsonReader.peeked = 10;
                        return;
                    }
                    throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + jsonReader.locationString());
                }
            }
        };
    }

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.stack = iArr;
        iArr[0] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.in = reader;
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        int i8 = this.pos;
        this.pos = i8 - 1;
        if (i8 + 4 <= this.limit || fillBuffer(5)) {
            int i9 = this.pos;
            char[] cArr = this.buffer;
            if (cArr[i9] == ')' && cArr[i9 + 1] == ']' && cArr[i9 + 2] == '}' && cArr[i9 + 3] == '\'' && cArr[i9 + 4] == '\n') {
                this.pos = i9 + 5;
            }
        }
    }

    private boolean fillBuffer(int i8) throws IOException {
        int i9;
        int i10;
        char[] cArr = this.buffer;
        int i11 = this.lineStart;
        int i12 = this.pos;
        this.lineStart = i11 - i12;
        int i13 = this.limit;
        if (i13 != i12) {
            int i14 = i13 - i12;
            this.limit = i14;
            System.arraycopy(cArr, i12, cArr, 0, i14);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.in;
            int i15 = this.limit;
            int i16 = reader.read(cArr, i15, cArr.length - i15);
            if (i16 == -1) {
                return false;
            }
            i9 = this.limit + i16;
            this.limit = i9;
            if (this.lineNumber == 0 && (i10 = this.lineStart) == 0 && i9 > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart = i10 + 1;
                i8++;
            }
        } while (i9 < i8);
        return true;
    }

    private String getPath(boolean z7) {
        StringBuilder sb = new StringBuilder("$");
        int i8 = 0;
        while (true) {
            int i9 = this.stackSize;
            if (i8 >= i9) {
                return sb.toString();
            }
            int i10 = this.stack[i8];
            if (i10 == 1 || i10 == 2) {
                int i11 = this.pathIndices[i8];
                if (z7 && i11 > 0 && i8 == i9 - 1) {
                    i11--;
                }
                sb.append('[');
                sb.append(i11);
                sb.append(']');
            } else if (i10 == 3 || i10 == 4 || i10 == 5) {
                sb.append('.');
                String str = this.pathNames[i8];
                if (str != null) {
                    sb.append(str);
                }
            }
            i8++;
        }
    }

    private boolean isLiteral(char c8) throws IOException {
        if (c8 == '\t' || c8 == '\n' || c8 == '\f' || c8 == '\r' || c8 == ' ') {
            return false;
        }
        if (c8 != '#') {
            if (c8 == ',') {
                return false;
            }
            if (c8 != '/' && c8 != '=') {
                if (c8 == '{' || c8 == '}' || c8 == ':') {
                    return false;
                }
                if (c8 != ';') {
                    switch (c8) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        checkLenient();
        return false;
    }

    private int nextNonWhitespace(boolean z7) throws IOException {
        char[] cArr = this.buffer;
        int i8 = this.pos;
        int i9 = this.limit;
        while (true) {
            if (i8 == i9) {
                this.pos = i8;
                if (!fillBuffer(1)) {
                    if (!z7) {
                        return -1;
                    }
                    throw new EOFException("End of input" + locationString());
                }
                i8 = this.pos;
                i9 = this.limit;
            }
            int i10 = i8 + 1;
            char c8 = cArr[i8];
            if (c8 == '\n') {
                this.lineNumber++;
                this.lineStart = i10;
            } else if (c8 != ' ' && c8 != '\r' && c8 != '\t') {
                if (c8 == '/') {
                    this.pos = i10;
                    if (i10 == i9) {
                        this.pos = i8;
                        boolean zFillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!zFillBuffer) {
                            return c8;
                        }
                    }
                    checkLenient();
                    int i11 = this.pos;
                    char c9 = cArr[i11];
                    if (c9 == '*') {
                        this.pos = i11 + 1;
                        if (!skipTo("*/")) {
                            throw syntaxError("Unterminated comment");
                        }
                        i8 = this.pos + 2;
                        i9 = this.limit;
                    } else {
                        if (c9 != '/') {
                            return c8;
                        }
                        this.pos = i11 + 1;
                        skipToEndOfLine();
                        i8 = this.pos;
                        i9 = this.limit;
                    }
                } else {
                    if (c8 != '#') {
                        this.pos = i10;
                        return c8;
                    }
                    this.pos = i10;
                    checkLenient();
                    skipToEndOfLine();
                    i8 = this.pos;
                    i9 = this.limit;
                }
            }
            i8 = i10;
        }
    }

    private String nextQuotedValue(char c8) throws IOException {
        int i8;
        char[] cArr = this.buffer;
        StringBuilder sb = null;
        do {
            int i9 = this.pos;
            int i10 = this.limit;
            while (true) {
                int i11 = i10;
                i8 = i9;
                while (true) {
                    if (i9 < i11) {
                        int i12 = i9 + 1;
                        char c9 = cArr[i9];
                        if (c9 == c8) {
                            this.pos = i12;
                            int i13 = (i12 - i8) - 1;
                            if (sb == null) {
                                return new String(cArr, i8, i13);
                            }
                            sb.append(cArr, i8, i13);
                            return sb.toString();
                        }
                        if (c9 == '\\') {
                            this.pos = i12;
                            int i14 = i12 - i8;
                            int i15 = i14 - 1;
                            if (sb == null) {
                                sb = new StringBuilder(Math.max(i14 * 2, 16));
                            }
                            sb.append(cArr, i8, i15);
                            sb.append(readEscapeCharacter());
                            i9 = this.pos;
                            i10 = this.limit;
                        } else {
                            if (c9 == '\n') {
                                this.lineNumber++;
                                this.lineStart = i12;
                            }
                            i9 = i12;
                        }
                    }
                }
            }
            if (sb == null) {
                sb = new StringBuilder(Math.max((i9 - i8) * 2, 16));
            }
            sb.append(cArr, i8, i9 - i8);
            this.pos = i9;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    private String nextUnquotedValue() throws IOException {
        String string;
        StringBuilder sb = null;
        int i8 = 0;
        while (true) {
            int i9 = 0;
            while (true) {
                int i10 = this.pos;
                if (i10 + i9 < this.limit) {
                    char c8 = this.buffer[i10 + i9];
                    if (c8 != '\t' && c8 != '\n' && c8 != '\f' && c8 != '\r' && c8 != ' ') {
                        if (c8 != '#') {
                            if (c8 != ',') {
                                if (c8 != '/' && c8 != '=') {
                                    if (c8 != '{' && c8 != '}' && c8 != ':') {
                                        if (c8 != ';') {
                                            switch (c8) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i9++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        checkLenient();
                    }
                    i8 = i9;
                } else if (i9 >= this.buffer.length) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max(i9, 16));
                    }
                    sb.append(this.buffer, this.pos, i9);
                    this.pos += i9;
                    if (!fillBuffer(1)) {
                    }
                } else if (!fillBuffer(i9 + 1)) {
                    i8 = i9;
                }
                if (sb == null) {
                    string = new String(this.buffer, this.pos, i8);
                } else {
                    sb.append(this.buffer, this.pos, i8);
                    string = sb.toString();
                }
                this.pos += i8;
                return string;
            }
        }
    }

    private int peekKeyword() {
        String str;
        String str2;
        int i8;
        char c8 = this.buffer[this.pos];
        if (c8 == 't' || c8 == 'T') {
            str = "true";
            str2 = "TRUE";
            i8 = 5;
        } else if (c8 == 'f' || c8 == 'F') {
            str = "false";
            str2 = "FALSE";
            i8 = 6;
        } else {
            if (c8 != 'n' && c8 != 'N') {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i8 = 7;
        }
        int length = str.length();
        for (int i9 = 1; i9 < length; i9++) {
            if (this.pos + i9 >= this.limit && !fillBuffer(i9 + 1)) {
                return 0;
            }
            char c9 = this.buffer[this.pos + i9];
            if (c9 != str.charAt(i9) && c9 != str2.charAt(i9)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i8;
        return i8;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
    /* JADX WARN: Code duplicated, block: B:90:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:92:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:97:0x00ef  */
    private int peekNumber() {
        char c8;
        char[] cArr = this.buffer;
        int i8 = this.pos;
        int i9 = this.limit;
        int i10 = 0;
        int i11 = 0;
        char c9 = 0;
        boolean z7 = true;
        long j8 = 0;
        boolean z8 = false;
        while (true) {
            if (i8 + i11 != i9) {
                c8 = cArr[i8 + i11];
                if (c8 != '+') {
                    if (c8 != 'E' || c8 == 'e') {
                        i10 = 0;
                        if (c9 == 2 && c9 != 4) {
                            return 0;
                        }
                        c9 = 5;
                    } else if (c8 == '-') {
                        i10 = 0;
                        if (c9 == 0) {
                            c9 = 1;
                            z8 = true;
                        } else if (c9 != 5) {
                            return 0;
                        }
                    } else if (c8 == '.') {
                        i10 = 0;
                        if (c9 != 2) {
                            return 0;
                        }
                        c9 = 3;
                    } else {
                        if (c8 < '0' || c8 > '9') {
                            if (!isLiteral(c8)) {
                                break;
                            }
                            return 0;
                        }
                        if (c9 == 1 || c9 == 0) {
                            j8 = -(c8 - '0');
                            i10 = 0;
                            c9 = 2;
                        } else {
                            if (c9 == 2) {
                                if (j8 == 0) {
                                    return 0;
                                }
                                long j9 = (10 * j8) - ((long) (c8 - '0'));
                                z7 &= j8 > MIN_INCOMPLETE_INTEGER || (j8 == MIN_INCOMPLETE_INTEGER && j9 < j8);
                                j8 = j9;
                            } else if (c9 == 3) {
                                i10 = 0;
                                c9 = 4;
                            } else if (c9 == 5 || c9 == 6) {
                                i10 = 0;
                                c9 = 7;
                            }
                            i10 = 0;
                        }
                    }
                    i11++;
                } else {
                    i10 = 0;
                    if (c9 != 5) {
                        return 0;
                    }
                }
                c9 = 6;
                i11++;
            } else {
                if (i11 == cArr.length) {
                    return i10;
                }
                if (!fillBuffer(i11 + 1)) {
                    break;
                }
                i8 = this.pos;
                i9 = this.limit;
                c8 = cArr[i8 + i11];
                if (c8 != '+') {
                    if (c8 != 'E') {
                        i10 = 0;
                        if (c9 == 2) {
                        }
                        c9 = 5;
                    } else {
                        i10 = 0;
                        if (c9 == 2) {
                        }
                        c9 = 5;
                    }
                    i11++;
                } else {
                    i10 = 0;
                    if (c9 != 5) {
                        return 0;
                    }
                }
                c9 = 6;
                i11++;
            }
        }
        if (c9 == 2 && z7 && ((j8 != Long.MIN_VALUE || z8) && (j8 != 0 || !z8))) {
            if (!z8) {
                j8 = -j8;
            }
            this.peekedLong = j8;
            this.pos += i11;
            this.peeked = 15;
            return 15;
        }
        if (c9 != 2 && c9 != 4 && c9 != 7) {
            return 0;
        }
        this.peekedNumberLength = i11;
        this.peeked = 16;
        return 16;
    }

    private void push(int i8) {
        int i9 = this.stackSize;
        int[] iArr = this.stack;
        if (i9 == iArr.length) {
            int i10 = i9 * 2;
            this.stack = Arrays.copyOf(iArr, i10);
            this.pathIndices = Arrays.copyOf(this.pathIndices, i10);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, i10);
        }
        int[] iArr2 = this.stack;
        int i11 = this.stackSize;
        this.stackSize = i11 + 1;
        iArr2[i11] = i8;
    }

    private char readEscapeCharacter() throws IOException {
        int i8;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i9 = this.pos;
        int i10 = i9 + 1;
        this.pos = i10;
        char c8 = cArr[i9];
        if (c8 == '\n') {
            this.lineNumber++;
            this.lineStart = i10;
        } else if (c8 != '\"' && c8 != '\'' && c8 != '/' && c8 != '\\') {
            if (c8 == 'b') {
                return '\b';
            }
            if (c8 == 'f') {
                return '\f';
            }
            if (c8 == 'n') {
                return '\n';
            }
            if (c8 == 'r') {
                return '\r';
            }
            if (c8 == 't') {
                return '\t';
            }
            if (c8 != 'u') {
                throw syntaxError("Invalid escape sequence");
            }
            if (i9 + 5 > this.limit && !fillBuffer(4)) {
                throw syntaxError("Unterminated escape sequence");
            }
            int i11 = this.pos;
            int i12 = i11 + 4;
            char c9 = 0;
            while (i11 < i12) {
                char c10 = this.buffer[i11];
                char c11 = (char) (c9 << 4);
                if (c10 >= '0' && c10 <= '9') {
                    i8 = c10 - '0';
                } else if (c10 >= 'a' && c10 <= 'f') {
                    i8 = c10 - 'W';
                } else {
                    if (c10 < 'A' || c10 > 'F') {
                        throw new NumberFormatException("\\u".concat(new String(this.buffer, this.pos, 4)));
                    }
                    i8 = c10 - '7';
                }
                c9 = (char) (i8 + c11);
                i11++;
            }
            this.pos += 4;
            return c9;
        }
        return c8;
    }

    private void skipQuotedValue(char c8) throws IOException {
        char[] cArr = this.buffer;
        do {
            int i8 = this.pos;
            int i9 = this.limit;
            while (i8 < i9) {
                int i10 = i8 + 1;
                char c9 = cArr[i8];
                if (c9 == c8) {
                    this.pos = i10;
                    return;
                }
                if (c9 == '\\') {
                    this.pos = i10;
                    readEscapeCharacter();
                    i8 = this.pos;
                    i9 = this.limit;
                } else {
                    if (c9 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i10;
                    }
                    i8 = i10;
                }
            }
            this.pos = i8;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private boolean skipTo(String str) {
        int length = str.length();
        while (true) {
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            char[] cArr = this.buffer;
            int i8 = this.pos;
            if (cArr[i8] != '\n') {
                for (int i9 = 0; i9 < length; i9++) {
                    if (this.buffer[this.pos + i9] == str.charAt(i9)) {
                    }
                }
                return true;
            }
            this.lineNumber++;
            this.lineStart = i8 + 1;
            this.pos++;
        }
    }

    private void skipToEndOfLine() {
        char c8;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                return;
            }
            char[] cArr = this.buffer;
            int i8 = this.pos;
            int i9 = i8 + 1;
            this.pos = i9;
            c8 = cArr[i8];
            if (c8 == '\n') {
                this.lineNumber++;
                this.lineStart = i9;
                return;
            }
        } while (c8 != '\r');
    }

    private void skipUnquotedValue() throws IOException {
        do {
            int i8 = 0;
            while (true) {
                int i9 = this.pos;
                if (i9 + i8 < this.limit) {
                    char c8 = this.buffer[i9 + i8];
                    if (c8 != '\t' && c8 != '\n' && c8 != '\f' && c8 != '\r' && c8 != ' ') {
                        if (c8 != '#') {
                            if (c8 != ',') {
                                if (c8 != '/' && c8 != '=') {
                                    if (c8 != '{' && c8 != '}' && c8 != ':') {
                                        if (c8 != ';') {
                                            switch (c8) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i8++;
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        checkLenient();
                    }
                    this.pos += i8;
                    return;
                }
                this.pos = i9 + i8;
            }
        } while (fillBuffer(1));
    }

    private IOException syntaxError(String str) throws MalformedJsonException {
        StringBuilder sbO = U2.o(str);
        sbO.append(locationString());
        throw new MalformedJsonException(sbO.toString());
    }

    public void beginArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + locationString());
        }
    }

    public void beginObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 1) {
            push(3);
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + locationString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    public int doPeek() throws IOException {
        int iNextNonWhitespace;
        int[] iArr = this.stack;
        int i8 = this.stackSize;
        int i9 = iArr[i8 - 1];
        if (i9 == 1) {
            iArr[i8 - 1] = 2;
        } else if (i9 == 2) {
            int iNextNonWhitespace2 = nextNonWhitespace(true);
            if (iNextNonWhitespace2 != 44) {
                if (iNextNonWhitespace2 != 59) {
                    if (iNextNonWhitespace2 != 93) {
                        throw syntaxError("Unterminated array");
                    }
                    this.peeked = 4;
                    return 4;
                }
                checkLenient();
            }
        } else {
            if (i9 == 3 || i9 == 5) {
                iArr[i8 - 1] = 4;
                if (i9 == 5 && (iNextNonWhitespace = nextNonWhitespace(true)) != 44) {
                    if (iNextNonWhitespace != 59) {
                        if (iNextNonWhitespace != 125) {
                            throw syntaxError("Unterminated object");
                        }
                        this.peeked = 2;
                        return 2;
                    }
                    checkLenient();
                }
                int iNextNonWhitespace3 = nextNonWhitespace(true);
                if (iNextNonWhitespace3 == 34) {
                    this.peeked = 13;
                    return 13;
                }
                if (iNextNonWhitespace3 == 39) {
                    checkLenient();
                    this.peeked = 12;
                    return 12;
                }
                if (iNextNonWhitespace3 == 125) {
                    if (i9 == 5) {
                        throw syntaxError("Expected name");
                    }
                    this.peeked = 2;
                    return 2;
                }
                checkLenient();
                this.pos--;
                if (!isLiteral((char) iNextNonWhitespace3)) {
                    throw syntaxError("Expected name");
                }
                this.peeked = 14;
                return 14;
            }
            if (i9 == 4) {
                iArr[i8 - 1] = 5;
                int iNextNonWhitespace4 = nextNonWhitespace(true);
                if (iNextNonWhitespace4 != 58) {
                    if (iNextNonWhitespace4 != 61) {
                        throw syntaxError("Expected ':'");
                    }
                    checkLenient();
                    if (this.pos < this.limit || fillBuffer(1)) {
                        char[] cArr = this.buffer;
                        int i10 = this.pos;
                        if (cArr[i10] == '>') {
                            this.pos = i10 + 1;
                        }
                    }
                }
            } else if (i9 == 6) {
                if (this.lenient) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (i9 == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (i9 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iNextNonWhitespace5 = nextNonWhitespace(true);
        if (iNextNonWhitespace5 == 34) {
            this.peeked = 9;
            return 9;
        }
        if (iNextNonWhitespace5 == 39) {
            checkLenient();
            this.peeked = 8;
            return 8;
        }
        if (iNextNonWhitespace5 != 44 && iNextNonWhitespace5 != 59) {
            if (iNextNonWhitespace5 == 91) {
                this.peeked = 3;
                return 3;
            }
            if (iNextNonWhitespace5 != 93) {
                if (iNextNonWhitespace5 == 123) {
                    this.peeked = 1;
                    return 1;
                }
                this.pos--;
                int iPeekKeyword = peekKeyword();
                if (iPeekKeyword != 0) {
                    return iPeekKeyword;
                }
                int iPeekNumber = peekNumber();
                if (iPeekNumber != 0) {
                    return iPeekNumber;
                }
                if (!isLiteral(this.buffer[this.pos])) {
                    throw syntaxError("Expected value");
                }
                checkLenient();
                this.peeked = 10;
                return 10;
            }
            if (i9 == 1) {
                this.peeked = 4;
                return 4;
            }
        }
        if (i9 != 1 && i9 != 2) {
            throw syntaxError("Unexpected value");
        }
        checkLenient();
        this.pos--;
        this.peeked = 7;
        return 7;
    }

    public void endArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + peek() + locationString());
        }
        int i8 = this.stackSize;
        this.stackSize = i8 - 1;
        int[] iArr = this.pathIndices;
        int i9 = i8 - 2;
        iArr[i9] = iArr[i9] + 1;
        this.peeked = 0;
    }

    public void endObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + peek() + locationString());
        }
        int i8 = this.stackSize;
        int i9 = i8 - 1;
        this.stackSize = i9;
        this.pathNames[i9] = null;
        int[] iArr = this.pathIndices;
        int i10 = i8 - 2;
        iArr[i10] = iArr[i10] + 1;
        this.peeked = 0;
    }

    public String getPreviousPath() {
        return getPath(true);
    }

    public boolean hasNext() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        return (iDoPeek == 2 || iDoPeek == 4 || iDoPeek == 17) ? false : true;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public String locationString() {
        StringBuilder sbD = O.D(" at line ", this.lineNumber + 1, " column ", (this.pos - this.lineStart) + 1, " path ");
        sbD.append(getPath());
        return sbD.toString();
    }

    public boolean nextBoolean() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i8 = this.stackSize - 1;
            iArr[i8] = iArr[i8] + 1;
            return true;
        }
        if (iDoPeek != 6) {
            throw new IllegalStateException("Expected a boolean but was " + peek() + locationString());
        }
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i9 = this.stackSize - 1;
        iArr2[i9] = iArr2[i9] + 1;
        return false;
    }

    public double nextDouble() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i8 = this.stackSize - 1;
            iArr[i8] = iArr[i8] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (iDoPeek == 8 || iDoPeek == 9) {
            this.peekedString = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
        } else if (iDoPeek == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (iDoPeek != 11) {
            throw new IllegalStateException("Expected a double but was " + peek() + locationString());
        }
        this.peeked = 11;
        double d6 = Double.parseDouble(this.peekedString);
        if (!this.lenient && (Double.isNaN(d6) || Double.isInfinite(d6))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + d6 + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i9 = this.stackSize - 1;
        iArr2[i9] = iArr2[i9] + 1;
        return d6;
    }

    public int nextInt() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            long j8 = this.peekedLong;
            int i8 = (int) j8;
            if (j8 != i8) {
                throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString());
            }
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i9 = this.stackSize - 1;
            iArr[i9] = iArr[i9] + 1;
            return i8;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9 && iDoPeek != 10) {
                throw new IllegalStateException("Expected an int but was " + peek() + locationString());
            }
            if (iDoPeek == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            }
            try {
                int i10 = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i11 = this.stackSize - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return i10;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d6 = Double.parseDouble(this.peekedString);
        int i12 = (int) d6;
        if (i12 != d6) {
            throw new NumberFormatException("Expected an int but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i13 = this.stackSize - 1;
        iArr3[i13] = iArr3[i13] + 1;
        return i12;
    }

    public long nextLong() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i8 = this.stackSize - 1;
            iArr[i8] = iArr[i8] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9 && iDoPeek != 10) {
                throw new IllegalStateException("Expected a long but was " + peek() + locationString());
            }
            if (iDoPeek == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            }
            try {
                long j8 = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i9 = this.stackSize - 1;
                iArr2[i9] = iArr2[i9] + 1;
                return j8;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d6 = Double.parseDouble(this.peekedString);
        long j9 = (long) d6;
        if (j9 != d6) {
            throw new NumberFormatException("Expected a long but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i10 = this.stackSize - 1;
        iArr3[i10] = iArr3[i10] + 1;
        return j9;
    }

    public String nextName() throws IOException {
        String strNextQuotedValue;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 14) {
            strNextQuotedValue = nextUnquotedValue();
        } else if (iDoPeek == 12) {
            strNextQuotedValue = nextQuotedValue('\'');
        } else {
            if (iDoPeek != 13) {
                throw new IllegalStateException("Expected a name but was " + peek() + locationString());
            }
            strNextQuotedValue = nextQuotedValue('\"');
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = strNextQuotedValue;
        return strNextQuotedValue;
    }

    public void nextNull() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 7) {
            throw new IllegalStateException("Expected null but was " + peek() + locationString());
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i8 = this.stackSize - 1;
        iArr[i8] = iArr[i8] + 1;
    }

    public String nextString() throws IOException {
        String str;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 10) {
            str = nextUnquotedValue();
        } else if (iDoPeek == 8) {
            str = nextQuotedValue('\'');
        } else if (iDoPeek == 9) {
            str = nextQuotedValue('\"');
        } else if (iDoPeek == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (iDoPeek == 15) {
            str = Long.toString(this.peekedLong);
        } else {
            if (iDoPeek != 16) {
                throw new IllegalStateException("Expected a string but was " + peek() + locationString());
            }
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i8 = this.stackSize - 1;
        iArr[i8] = iArr[i8] + 1;
        return str;
    }

    public JsonToken peek() {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        switch (iDoPeek) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void setLenient(boolean z7) {
        this.lenient = z7;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void skipValue() throws IOException {
        int i8 = 0;
        do {
            int iDoPeek = this.peeked;
            if (iDoPeek == 0) {
                iDoPeek = doPeek();
            }
            switch (iDoPeek) {
                case 1:
                    push(3);
                    i8++;
                    this.peeked = 0;
                    break;
                case 2:
                    if (i8 == 0) {
                        this.pathNames[this.stackSize - 1] = null;
                    }
                    this.stackSize--;
                    i8--;
                    this.peeked = 0;
                    break;
                case 3:
                    push(1);
                    i8++;
                    this.peeked = 0;
                    break;
                case 4:
                    this.stackSize--;
                    i8--;
                    this.peeked = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.peeked = 0;
                    break;
                case 8:
                    skipQuotedValue('\'');
                    this.peeked = 0;
                    break;
                case 9:
                    skipQuotedValue('\"');
                    this.peeked = 0;
                    break;
                case 10:
                    skipUnquotedValue();
                    this.peeked = 0;
                    break;
                case 12:
                    skipQuotedValue('\'');
                    if (i8 == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                    }
                    this.peeked = 0;
                    break;
                case 13:
                    skipQuotedValue('\"');
                    if (i8 == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                    }
                    this.peeked = 0;
                    break;
                case 14:
                    skipUnquotedValue();
                    if (i8 == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                    }
                    this.peeked = 0;
                    break;
                case 16:
                    this.pos += this.peekedNumberLength;
                    this.peeked = 0;
                    break;
                case 17:
                    break;
            }
            return;
        } while (i8 > 0);
        int[] iArr = this.pathIndices;
        int i9 = this.stackSize - 1;
        iArr[i9] = iArr[i9] + 1;
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }

    public String getPath() {
        return getPath(false);
    }
}

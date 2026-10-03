package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Streams {
    private Streams() {
        throw new UnsupportedOperationException();
    }

    public static JsonElement parse(JsonReader jsonReader) {
        boolean z7;
        try {
            try {
                jsonReader.peek();
                z7 = false;
                try {
                    return TypeAdapters.JSON_ELEMENT.read2(jsonReader);
                } catch (EOFException e8) {
                    e = e8;
                    if (z7) {
                        return JsonNull.INSTANCE;
                    }
                    throw new JsonSyntaxException(e);
                }
            } catch (MalformedJsonException e9) {
                throw new JsonSyntaxException(e9);
            } catch (IOException e10) {
                throw new JsonIOException(e10);
            } catch (NumberFormatException e11) {
                throw new JsonSyntaxException(e11);
            }
        } catch (EOFException e12) {
            e = e12;
            z7 = true;
        }
    }

    public static void write(JsonElement jsonElement, JsonWriter jsonWriter) {
        TypeAdapters.JSON_ELEMENT.write(jsonWriter, jsonElement);
    }

    public static Writer writerForAppendable(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new AppendableWriter(appendable);
    }

    public static final class AppendableWriter extends Writer {
        private final Appendable appendable;
        private final CurrentWrite currentWrite = new CurrentWrite();

        public static class CurrentWrite implements CharSequence {
            private String cachedString;
            private char[] chars;

            private CurrentWrite() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i8) {
                return this.chars[i8];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.chars.length;
            }

            public void setChars(char[] cArr) {
                this.chars = cArr;
                this.cachedString = null;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i8, int i9) {
                return new String(this.chars, i8, i9 - i8);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                if (this.cachedString == null) {
                    this.cachedString = new String(this.chars);
                }
                return this.cachedString;
            }
        }

        public AppendableWriter(Appendable appendable) {
            this.appendable = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i8, int i9) throws IOException {
            this.currentWrite.setChars(cArr);
            this.appendable.append(this.currentWrite, i8, i9 + i8);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) throws IOException {
            this.appendable.append(charSequence);
            return this;
        }

        @Override // java.io.Writer
        public void write(int i8) throws IOException {
            this.appendable.append((char) i8);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i8, int i9) throws IOException {
            this.appendable.append(charSequence, i8, i9);
            return this;
        }

        @Override // java.io.Writer
        public void write(String str, int i8, int i9) throws IOException {
            Objects.requireNonNull(str);
            this.appendable.append(str, i8, i9 + i8);
        }
    }
}

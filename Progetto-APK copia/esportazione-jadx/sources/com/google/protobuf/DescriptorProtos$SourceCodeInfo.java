package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class DescriptorProtos$SourceCodeInfo extends AbstractC2909i1 implements R1 {
    private static final DescriptorProtos$SourceCodeInfo DEFAULT_INSTANCE;
    public static final int LOCATION_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER;
    private InterfaceC2956u1 location_ = AbstractC2909i1.emptyProtobufList();

    public static final class Location extends AbstractC2909i1 implements InterfaceC2968y0 {
        private static final Location DEFAULT_INSTANCE;
        public static final int LEADING_COMMENTS_FIELD_NUMBER = 3;
        public static final int LEADING_DETACHED_COMMENTS_FIELD_NUMBER = 6;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int PATH_FIELD_NUMBER = 1;
        public static final int SPAN_FIELD_NUMBER = 2;
        public static final int TRAILING_COMMENTS_FIELD_NUMBER = 4;
        private int bitField0_;
        private int pathMemoizedSerializedSize = -1;
        private int spanMemoizedSerializedSize = -1;
        private InterfaceC2948s1 path_ = AbstractC2909i1.emptyIntList();
        private InterfaceC2948s1 span_ = AbstractC2909i1.emptyIntList();
        private String leadingComments_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private String trailingComments_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private InterfaceC2956u1 leadingDetachedComments_ = AbstractC2909i1.emptyProtobufList();

        static {
            Location location = new Location();
            DEFAULT_INSTANCE = location;
            AbstractC2909i1.registerDefaultInstance(Location.class, location);
        }

        private Location() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllLeadingDetachedComments(Iterable<String> iterable) {
            ensureLeadingDetachedCommentsIsMutable();
            AbstractC2879b.addAll((Iterable) iterable, (List) this.leadingDetachedComments_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllPath(Iterable<? extends Integer> iterable) {
            ensurePathIsMutable();
            AbstractC2879b.addAll((Iterable) iterable, (List) this.path_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllSpan(Iterable<? extends Integer> iterable) {
            ensureSpanIsMutable();
            AbstractC2879b.addAll((Iterable) iterable, (List) this.span_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addLeadingDetachedComments(String str) {
            str.getClass();
            ensureLeadingDetachedCommentsIsMutable();
            this.leadingDetachedComments_.add(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addLeadingDetachedCommentsBytes(r rVar) {
            ensureLeadingDetachedCommentsIsMutable();
            this.leadingDetachedComments_.add(rVar.t());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addPath(int i8) {
            ensurePathIsMutable();
            ((C2921l1) this.path_).i(i8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addSpan(int i8) {
            ensureSpanIsMutable();
            ((C2921l1) this.span_).i(i8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLeadingComments() {
            this.bitField0_ &= -2;
            this.leadingComments_ = getDefaultInstance().getLeadingComments();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLeadingDetachedComments() {
            this.leadingDetachedComments_ = AbstractC2909i1.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPath() {
            this.path_ = AbstractC2909i1.emptyIntList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSpan() {
            this.span_ = AbstractC2909i1.emptyIntList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTrailingComments() {
            this.bitField0_ &= -3;
            this.trailingComments_ = getDefaultInstance().getTrailingComments();
        }

        private void ensureLeadingDetachedCommentsIsMutable() {
            InterfaceC2956u1 interfaceC2956u1 = this.leadingDetachedComments_;
            if (((AbstractC2883c) interfaceC2956u1).f24418G) {
                return;
            }
            this.leadingDetachedComments_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void ensurePathIsMutable() {
            InterfaceC2948s1 interfaceC2948s1 = this.path_;
            if (((AbstractC2883c) interfaceC2948s1).f24418G) {
                return;
            }
            this.path_ = AbstractC2909i1.mutableCopy(interfaceC2948s1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void ensureSpanIsMutable() {
            InterfaceC2948s1 interfaceC2948s1 = this.span_;
            if (((AbstractC2883c) interfaceC2948s1).f24418G) {
                return;
            }
            this.span_ = AbstractC2909i1.mutableCopy(interfaceC2948s1);
        }

        public static Location getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2965x0 newBuilder() {
            return (C2965x0) DEFAULT_INSTANCE.createBuilder();
        }

        public static Location parseDelimitedFrom(InputStream inputStream) {
            return (Location) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Location parseFrom(ByteBuffer byteBuffer) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLeadingComments(String str) {
            str.getClass();
            this.bitField0_ |= 1;
            this.leadingComments_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLeadingCommentsBytes(r rVar) {
            this.leadingComments_ = rVar.t();
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLeadingDetachedComments(int i8, String str) {
            str.getClass();
            ensureLeadingDetachedCommentsIsMutable();
            this.leadingDetachedComments_.set(i8, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPath(int i8, int i9) {
            ensurePathIsMutable();
            ((C2921l1) this.path_).o(i8, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSpan(int i8, int i9) {
            ensureSpanIsMutable();
            ((C2921l1) this.span_).o(i8, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTrailingComments(String str) {
            str.getClass();
            this.bitField0_ |= 2;
            this.trailingComments_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTrailingCommentsBytes(r rVar) {
            this.trailingComments_ = rVar.t();
            this.bitField0_ |= 2;
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0003\u0000\u0001'\u0002'\u0003ဈ\u0000\u0004ဈ\u0001\u0006\u001a", new Object[]{"bitField0_", "path_", "span_", "leadingComments_", "trailingComments_", "leadingDetachedComments_"});
                case 3:
                    return new Location();
                case 4:
                    return new C2965x0(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (Location.class) {
                            try {
                                c2885c1 = PARSER;
                                if (c2885c1 == null) {
                                    c2885c1 = new C2885c1(DEFAULT_INSTANCE);
                                    PARSER = c2885c1;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return c2885c1;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public String getLeadingComments() {
            return this.leadingComments_;
        }

        public r getLeadingCommentsBytes() {
            return r.l(this.leadingComments_);
        }

        public String getLeadingDetachedComments(int i8) {
            return (String) this.leadingDetachedComments_.get(i8);
        }

        public r getLeadingDetachedCommentsBytes(int i8) {
            return r.l((String) this.leadingDetachedComments_.get(i8));
        }

        public int getLeadingDetachedCommentsCount() {
            return this.leadingDetachedComments_.size();
        }

        public List<String> getLeadingDetachedCommentsList() {
            return this.leadingDetachedComments_;
        }

        public int getPath(int i8) {
            return ((C2921l1) this.path_).n(i8);
        }

        public int getPathCount() {
            return ((C2921l1) this.path_).size();
        }

        public List<Integer> getPathList() {
            return this.path_;
        }

        public int getSpan(int i8) {
            return ((C2921l1) this.span_).n(i8);
        }

        public int getSpanCount() {
            return ((C2921l1) this.span_).size();
        }

        public List<Integer> getSpanList() {
            return this.span_;
        }

        public String getTrailingComments() {
            return this.trailingComments_;
        }

        public r getTrailingCommentsBytes() {
            return r.l(this.trailingComments_);
        }

        public boolean hasLeadingComments() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasTrailingComments() {
            return (this.bitField0_ & 2) != 0;
        }

        public static C2965x0 newBuilder(Location location) {
            return (C2965x0) DEFAULT_INSTANCE.createBuilder(location);
        }

        public static Location parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (Location) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Location parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static Location parseFrom(r rVar) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static Location parseFrom(r rVar, O0 o4) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static Location parseFrom(byte[] bArr) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Location parseFrom(byte[] bArr, O0 o4) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static Location parseFrom(InputStream inputStream) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Location parseFrom(InputStream inputStream, O0 o4) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Location parseFrom(AbstractC2961w abstractC2961w) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static Location parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (Location) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    static {
        DescriptorProtos$SourceCodeInfo descriptorProtos$SourceCodeInfo = new DescriptorProtos$SourceCodeInfo();
        DEFAULT_INSTANCE = descriptorProtos$SourceCodeInfo;
        AbstractC2909i1.registerDefaultInstance(DescriptorProtos$SourceCodeInfo.class, descriptorProtos$SourceCodeInfo);
    }

    private DescriptorProtos$SourceCodeInfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllLocation(Iterable<? extends Location> iterable) {
        ensureLocationIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.location_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLocation(Location location) {
        location.getClass();
        ensureLocationIsMutable();
        this.location_.add(location);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLocation() {
        this.location_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureLocationIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.location_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.location_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static DescriptorProtos$SourceCodeInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2962w0 newBuilder() {
        return (C2962w0) DEFAULT_INSTANCE.createBuilder();
    }

    public static DescriptorProtos$SourceCodeInfo parseDelimitedFrom(InputStream inputStream) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(ByteBuffer byteBuffer) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeLocation(int i8) {
        ensureLocationIsMutable();
        this.location_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLocation(int i8, Location location) {
        location.getClass();
        ensureLocationIsMutable();
        this.location_.set(i8, location);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"location_", Location.class});
            case 3:
                return new DescriptorProtos$SourceCodeInfo();
            case 4:
                return new C2962w0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (DescriptorProtos$SourceCodeInfo.class) {
                        try {
                            c2885c1 = PARSER;
                            if (c2885c1 == null) {
                                c2885c1 = new C2885c1(DEFAULT_INSTANCE);
                                PARSER = c2885c1;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return c2885c1;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public Location getLocation(int i8) {
        return (Location) this.location_.get(i8);
    }

    public int getLocationCount() {
        return this.location_.size();
    }

    public List<Location> getLocationList() {
        return this.location_;
    }

    public InterfaceC2968y0 getLocationOrBuilder(int i8) {
        return (InterfaceC2968y0) this.location_.get(i8);
    }

    public List<? extends InterfaceC2968y0> getLocationOrBuilderList() {
        return this.location_;
    }

    public static C2962w0 newBuilder(DescriptorProtos$SourceCodeInfo descriptorProtos$SourceCodeInfo) {
        return (C2962w0) DEFAULT_INSTANCE.createBuilder(descriptorProtos$SourceCodeInfo);
    }

    public static DescriptorProtos$SourceCodeInfo parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(r rVar) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLocation(int i8, Location location) {
        location.getClass();
        ensureLocationIsMutable();
        this.location_.add(i8, location);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(r rVar, O0 o4) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(byte[] bArr) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(byte[] bArr, O0 o4) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(InputStream inputStream) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(AbstractC2961w abstractC2961w) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (DescriptorProtos$SourceCodeInfo) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}

.class public final Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
.super Lcom/google/protobuf/i1;
.source "SourceFile"

# interfaces
.implements LV4/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i1;",
        "LV4/v;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2;"
        }
    .end annotation
.end field


# instance fields
.field private experimentId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 7
    .line 8
    const-class v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/i1;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/i1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/i1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->experimentId_:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->setExperimentId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->clearExperimentId()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->setExperimentIdBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearExperimentId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->getExperimentId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->experimentId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()LV4/u;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-virtual {v0}, Lcom/google/protobuf/i1;->createBuilder()Lcom/google/protobuf/b1;

    move-result-object v0

    check-cast v0, LV4/u;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)LV4/u;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/i1;->createBuilder(Lcom/google/protobuf/i1;)Lcom/google/protobuf/b1;

    move-result-object p0

    check-cast p0, LV4/u;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[B)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/O0;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[BLcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->getParserForType()Lcom/google/protobuf/e2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setExperimentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->experimentId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setExperimentIdBytes(Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/r;->t()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->experimentId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/h1;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :pswitch_0
    sget-object p1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->PARSER:Lcom/google/protobuf/e2;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->PARSER:Lcom/google/protobuf/e2;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/protobuf/c1;

    .line 27
    .line 28
    sget-object p3, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Lcom/google/protobuf/c1;-><init>(Lcom/google/protobuf/i1;)V

    .line 31
    .line 32
    .line 33
    sput-object p1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->PARSER:Lcom/google/protobuf/e2;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p2

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_2
    return-object p1

    .line 43
    :pswitch_1
    sget-object p1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, LV4/u;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->access$000()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Lcom/google/protobuf/b1;-><init>(Lcom/google/protobuf/i1;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :pswitch_3
    new-instance p1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;-><init>()V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string p2, "experimentId_"

    .line 65
    .line 66
    const/4 p3, 0x0

    .line 67
    aput-object p2, p1, p3

    .line 68
    .line 69
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 70
    .line 71
    sget-object p3, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 72
    .line 73
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/i1;->newMessageInfo(Lcom/google/protobuf/Q1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :pswitch_5
    const/4 p1, 0x0

    .line 79
    return-object p1

    .line 80
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->experimentId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->experimentId_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/r;->l(Ljava/lang/String;)Lcom/google/protobuf/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

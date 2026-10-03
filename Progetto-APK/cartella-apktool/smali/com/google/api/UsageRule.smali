.class public final Lcom/google/api/UsageRule;
.super Lcom/google/protobuf/i1;
.source "SourceFile"

# interfaces
.implements Lw4/D0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i1;",
        "Lw4/D0;"
    }
.end annotation


# static fields
.field public static final ALLOW_UNREGISTERED_CALLS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

.field private static volatile PARSER:Lcom/google/protobuf/e2; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2;"
        }
    .end annotation
.end field

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1

.field public static final SKIP_SERVICE_CONTROL_FIELD_NUMBER:I = 0x3


# instance fields
.field private allowUnregisteredCalls_:Z

.field private selector_:Ljava/lang/String;

.field private skipServiceControl_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/UsageRule;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/api/UsageRule;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    .line 7
    .line 8
    const-class v1, Lcom/google/api/UsageRule;

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
    iput-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000()Lcom/google/api/UsageRule;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/api/UsageRule;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setSelector(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/google/api/UsageRule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/UsageRule;->clearSelector()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/google/api/UsageRule;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setSelectorBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/google/api/UsageRule;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setAllowUnregisteredCalls(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/google/api/UsageRule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/UsageRule;->clearAllowUnregisteredCalls()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/google/api/UsageRule;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setSkipServiceControl(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/google/api/UsageRule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/UsageRule;->clearSkipServiceControl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAllowUnregisteredCalls()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/api/UsageRule;->allowUnregisteredCalls_:Z

    .line 3
    .line 4
    return-void
.end method

.method private clearSelector()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/UsageRule;->getDefaultInstance()Lcom/google/api/UsageRule;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/api/UsageRule;->getSelector()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearSkipServiceControl()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/api/UsageRule;->skipServiceControl_:Z

    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/UsageRule;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lw4/C0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-virtual {v0}, Lcom/google/protobuf/i1;->createBuilder()Lcom/google/protobuf/b1;

    move-result-object v0

    check-cast v0, Lw4/C0;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/UsageRule;)Lw4/C0;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/i1;->createBuilder(Lcom/google/protobuf/i1;)Lcom/google/protobuf/b1;

    move-result-object p0

    check-cast p0, Lw4/C0;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/UsageRule;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/api/UsageRule;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/api/UsageRule;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/api/UsageRule;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;)Lcom/google/api/UsageRule;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/api/UsageRule;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/UsageRule;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/api/UsageRule;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/UsageRule;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/api/UsageRule;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/UsageRule;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[B)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/O0;)Lcom/google/api/UsageRule;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[BLcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

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
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

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

.method private setAllowUnregisteredCalls(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/UsageRule;->allowUnregisteredCalls_:Z

    .line 2
    .line 3
    return-void
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setSelectorBytes(Lcom/google/protobuf/r;)V
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
    iput-object p1, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setSkipServiceControl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/UsageRule;->skipServiceControl_:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/h1;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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
    sget-object p1, Lcom/google/api/UsageRule;->PARSER:Lcom/google/protobuf/e2;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/api/UsageRule;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/api/UsageRule;->PARSER:Lcom/google/protobuf/e2;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/protobuf/c1;

    .line 27
    .line 28
    sget-object p3, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Lcom/google/protobuf/c1;-><init>(Lcom/google/protobuf/i1;)V

    .line 31
    .line 32
    .line 33
    sput-object p1, Lcom/google/api/UsageRule;->PARSER:Lcom/google/protobuf/e2;

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
    sget-object p1, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Lw4/C0;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/api/UsageRule;->access$000()Lcom/google/api/UsageRule;

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
    new-instance p1, Lcom/google/api/UsageRule;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/google/api/UsageRule;-><init>()V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_4
    const/4 p1, 0x3

    .line 63
    new-array p1, p1, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string p3, "selector_"

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    aput-object p3, p1, v0

    .line 69
    .line 70
    const-string p3, "allowUnregisteredCalls_"

    .line 71
    .line 72
    aput-object p3, p1, p2

    .line 73
    .line 74
    const-string p2, "skipServiceControl_"

    .line 75
    .line 76
    const/4 p3, 0x2

    .line 77
    aput-object p2, p1, p3

    .line 78
    .line 79
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0007\u0003\u0007"

    .line 80
    .line 81
    sget-object p3, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    .line 82
    .line 83
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/i1;->newMessageInfo(Lcom/google/protobuf/Q1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :pswitch_5
    const/4 p1, 0x0

    .line 89
    return-object p1

    .line 90
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
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

.method public getAllowUnregisteredCalls()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/UsageRule;->allowUnregisteredCalls_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

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

.method public getSkipServiceControl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/UsageRule;->skipServiceControl_:Z

    .line 2
    .line 3
    return v0
.end method

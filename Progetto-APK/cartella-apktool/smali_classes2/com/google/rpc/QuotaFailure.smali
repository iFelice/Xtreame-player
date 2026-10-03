.class public final Lcom/google/rpc/QuotaFailure;
.super Lcom/google/protobuf/i1;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/R1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/QuotaFailure$Violation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i1;",
        "Lcom/google/protobuf/R1;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

.field private static volatile PARSER:Lcom/google/protobuf/e2; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2;"
        }
    .end annotation
.end field

.field public static final VIOLATIONS_FIELD_NUMBER:I = 0x1


# instance fields
.field private violations_:Lcom/google/protobuf/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u1;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/rpc/QuotaFailure;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/rpc/QuotaFailure;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    .line 7
    .line 8
    const-class v1, Lcom/google/rpc/QuotaFailure;

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
    invoke-static {}, Lcom/google/protobuf/i1;->emptyProtobufList()Lcom/google/protobuf/u1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$1000(Lcom/google/rpc/QuotaFailure;Lcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure;->addViolations(Lcom/google/rpc/QuotaFailure$Violation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/QuotaFailure;->addViolations(ILcom/google/rpc/QuotaFailure$Violation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/google/rpc/QuotaFailure;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure;->addAllViolations(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/google/rpc/QuotaFailure;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->clearViolations()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/google/rpc/QuotaFailure;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure;->removeViolations(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800()Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$900(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/QuotaFailure;->setViolations(ILcom/google/rpc/QuotaFailure$Violation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllViolations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addViolations(ILcom/google/rpc/QuotaFailure$Violation;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addViolations(Lcom/google/rpc/QuotaFailure$Violation;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearViolations()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/i1;->emptyProtobufList()Lcom/google/protobuf/u1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 6
    .line 7
    return-void
.end method

.method private ensureViolationsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/protobuf/c;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/protobuf/c;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/protobuf/i1;->mutableCopy(Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-virtual {v0}, Lcom/google/protobuf/i1;->createBuilder()Lcom/google/protobuf/b1;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/g;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/QuotaFailure;)Lcom/google/rpc/g;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/i1;->createBuilder(Lcom/google/protobuf/i1;)Lcom/google/protobuf/b1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/g;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[B)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/O0;)Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[BLcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

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
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

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

.method private removeViolations(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setViolations(ILcom/google/rpc/QuotaFailure$Violation;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
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
    sget-object p1, Lcom/google/rpc/QuotaFailure;->PARSER:Lcom/google/protobuf/e2;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/rpc/QuotaFailure;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/rpc/QuotaFailure;->PARSER:Lcom/google/protobuf/e2;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/protobuf/c1;

    .line 27
    .line 28
    sget-object p3, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Lcom/google/protobuf/c1;-><init>(Lcom/google/protobuf/i1;)V

    .line 31
    .line 32
    .line 33
    sput-object p1, Lcom/google/rpc/QuotaFailure;->PARSER:Lcom/google/protobuf/e2;

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
    sget-object p1, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Lcom/google/rpc/g;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/rpc/QuotaFailure;->access$800()Lcom/google/rpc/QuotaFailure;

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
    new-instance p1, Lcom/google/rpc/QuotaFailure;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/google/rpc/QuotaFailure;-><init>()V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_4
    const/4 p1, 0x2

    .line 63
    new-array p1, p1, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string p3, "violations_"

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    aput-object p3, p1, v0

    .line 69
    .line 70
    const-class p3, Lcom/google/rpc/QuotaFailure$Violation;

    .line 71
    .line 72
    aput-object p3, p1, p2

    .line 73
    .line 74
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 75
    .line 76
    sget-object p3, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    .line 77
    .line 78
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/i1;->newMessageInfo(Lcom/google/protobuf/Q1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :pswitch_5
    const/4 p1, 0x0

    .line 84
    return-object p1

    .line 85
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    nop

    .line 91
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

.method public getViolations(I)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/rpc/QuotaFailure$Violation;

    .line 8
    .line 9
    return-object p1
.end method

.method public getViolationsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViolationsOrBuilder(I)Lo5/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lo5/h;

    .line 8
    .line 9
    return-object p1
.end method

.method public getViolationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo5/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    return-object v0
.end method

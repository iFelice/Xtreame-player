.class public final Lcom/google/rpc/context/AttributeContext$Peer;
.super Lcom/google/protobuf/i1;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Peer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i1;",
        "Lcom/google/protobuf/R1;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

.field public static final IP_FIELD_NUMBER:I = 0x1

.field public static final LABELS_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/e2; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2;"
        }
    .end annotation
.end field

.field public static final PORT_FIELD_NUMBER:I = 0x2

.field public static final PRINCIPAL_FIELD_NUMBER:I = 0x7

.field public static final REGION_CODE_FIELD_NUMBER:I = 0x8


# instance fields
.field private ip_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/K1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/K1;"
        }
    .end annotation
.end field

.field private port_:J

.field private principal_:Ljava/lang/String;

.field private regionCode_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Peer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Peer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    .line 7
    .line 8
    const-class v1, Lcom/google/rpc/context/AttributeContext$Peer;

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
    sget-object v0, Lcom/google/protobuf/K1;->H:Lcom/google/protobuf/K1;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/K1;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$000()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setIp(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setRegionCode(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/google/rpc/context/AttributeContext$Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->clearRegionCode()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setRegionCodeBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/google/rpc/context/AttributeContext$Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->clearIp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setIpBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/google/rpc/context/AttributeContext$Peer;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Peer;->setPort(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/google/rpc/context/AttributeContext$Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->clearPort()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->getMutableLabelsMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$700(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setPrincipal(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/google/rpc/context/AttributeContext$Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->clearPrincipal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setPrincipalBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearIp()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getIp()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearPort()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->port_:J

    .line 4
    .line 5
    return-void
.end method

.method private clearPrincipal()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getPrincipal()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearRegionCode()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getRegionCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    .line 2
    .line 3
    return-object v0
.end method

.method private getMutableLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetMutableLabels()Lcom/google/protobuf/K1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private internalGetLabels()Lcom/google/protobuf/K1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/K1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/K1;

    .line 2
    .line 3
    return-object v0
.end method

.method private internalGetMutableLabels()Lcom/google/protobuf/K1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/K1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/K1;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/protobuf/K1;->G:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/K1;->c()Lcom/google/protobuf/K1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/K1;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/K1;

    .line 14
    .line 15
    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/context/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/protobuf/i1;->createBuilder()Lcom/google/protobuf/b1;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/d;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/d;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/i1;->createBuilder(Lcom/google/protobuf/i1;)Lcom/google/protobuf/b1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/d;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[B)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/O0;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[BLcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Peer;

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
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

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

.method private setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setIpBytes(Lcom/google/protobuf/r;)V
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
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setPort(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->port_:J

    .line 2
    .line 3
    return-void
.end method

.method private setPrincipal(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setPrincipalBytes(Lcom/google/protobuf/r;)V
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
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setRegionCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setRegionCodeBytes(Lcom/google/protobuf/r;)V
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
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public containsLabels(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/K1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

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
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Peer;->PARSER:Lcom/google/protobuf/e2;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/rpc/context/AttributeContext$Peer;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Peer;->PARSER:Lcom/google/protobuf/e2;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/protobuf/c1;

    .line 27
    .line 28
    sget-object p3, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Lcom/google/protobuf/c1;-><init>(Lcom/google/protobuf/i1;)V

    .line 31
    .line 32
    .line 33
    sput-object p1, Lcom/google/rpc/context/AttributeContext$Peer;->PARSER:Lcom/google/protobuf/e2;

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
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Lcom/google/rpc/context/d;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->access$000()Lcom/google/rpc/context/AttributeContext$Peer;

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
    new-instance p1, Lcom/google/rpc/context/AttributeContext$Peer;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/google/rpc/context/AttributeContext$Peer;-><init>()V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_4
    const/4 p1, 0x6

    .line 63
    new-array p1, p1, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string p3, "ip_"

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    aput-object p3, p1, v0

    .line 69
    .line 70
    const-string p3, "port_"

    .line 71
    .line 72
    aput-object p3, p1, p2

    .line 73
    .line 74
    const-string p2, "labels_"

    .line 75
    .line 76
    const/4 p3, 0x2

    .line 77
    aput-object p2, p1, p3

    .line 78
    .line 79
    sget-object p2, Lcom/google/rpc/context/e;->a:Lcom/google/protobuf/J1;

    .line 80
    .line 81
    const/4 p3, 0x3

    .line 82
    aput-object p2, p1, p3

    .line 83
    .line 84
    const-string p2, "principal_"

    .line 85
    .line 86
    const/4 p3, 0x4

    .line 87
    aput-object p2, p1, p3

    .line 88
    .line 89
    const-string p2, "regionCode_"

    .line 90
    .line 91
    const/4 p3, 0x5

    .line 92
    aput-object p2, p1, p3

    .line 93
    .line 94
    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0008\u0005\u0001\u0000\u0000\u0001\u0208\u0002\u0002\u00062\u0007\u0208\u0008\u0208"

    .line 95
    .line 96
    sget-object p3, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    .line 97
    .line 98
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/i1;->newMessageInfo(Lcom/google/protobuf/Q1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :pswitch_5
    const/4 p1, 0x0

    .line 104
    return-object p1

    .line 105
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    nop

    .line 111
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

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIpBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

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

.method public getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/K1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/K1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/K1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    move-object p2, p1

    .line 19
    check-cast p2, Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    return-object p2
.end method

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/K1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public getPort()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->port_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPrincipal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrincipalBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

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

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRegionCodeBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

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

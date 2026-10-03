.class public final Lcom/google/api/Distribution$Exemplar;
.super Lcom/google/protobuf/i1;
.source "SourceFile"

# interfaces
.implements Lw4/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Exemplar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i1;",
        "Lw4/w;"
    }
.end annotation


# static fields
.field public static final ATTACHMENTS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

.field private static volatile PARSER:Lcom/google/protobuf/e2; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private attachments_:Lcom/google/protobuf/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u1;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private timestamp_:Lcom/google/protobuf/Timestamp;

.field private value_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/Distribution$Exemplar;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/api/Distribution$Exemplar;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    .line 7
    .line 8
    const-class v1, Lcom/google/api/Distribution$Exemplar;

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
    iput-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$4000()Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$4100(Lcom/google/api/Distribution$Exemplar;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->setValue(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4200(Lcom/google/api/Distribution$Exemplar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->clearValue()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4300(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->setTimestamp(Lcom/google/protobuf/Timestamp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4400(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->mergeTimestamp(Lcom/google/protobuf/Timestamp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4500(Lcom/google/api/Distribution$Exemplar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->clearTimestamp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4600(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->setAttachments(ILcom/google/protobuf/Any;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4700(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Any;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->addAttachments(Lcom/google/protobuf/Any;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4800(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->addAttachments(ILcom/google/protobuf/Any;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4900(Lcom/google/api/Distribution$Exemplar;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->addAllAttachments(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5000(Lcom/google/api/Distribution$Exemplar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->clearAttachments()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5100(Lcom/google/api/Distribution$Exemplar;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->removeAttachments(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllAttachments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAttachments(ILcom/google/protobuf/Any;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAttachments(Lcom/google/protobuf/Any;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAttachments()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/i1;->emptyProtobufList()Lcom/google/protobuf/u1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 6
    .line 7
    return-void
.end method

.method private clearTimestamp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 3
    .line 4
    iget v0, p0, Lcom/google/api/Distribution$Exemplar;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/api/Distribution$Exemplar;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearValue()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/api/Distribution$Exemplar;->value_:D

    .line 4
    .line 5
    return-void
.end method

.method private ensureAttachmentsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

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
    iput-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/u2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/b1;->g(Lcom/google/protobuf/i1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/protobuf/b1;->c()Lcom/google/protobuf/i1;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/google/protobuf/Timestamp;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 33
    .line 34
    :goto_0
    iget p1, p0, Lcom/google/api/Distribution$Exemplar;->bitField0_:I

    .line 35
    .line 36
    or-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    iput p1, p0, Lcom/google/api/Distribution$Exemplar;->bitField0_:I

    .line 39
    .line 40
    return-void
.end method

.method public static newBuilder()Lcom/google/api/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/protobuf/i1;->createBuilder()Lcom/google/protobuf/b1;

    move-result-object v0

    check-cast v0, Lcom/google/api/i;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Distribution$Exemplar;)Lcom/google/api/i;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/i1;->createBuilder(Lcom/google/protobuf/i1;)Lcom/google/protobuf/b1;

    move-result-object p0

    check-cast p0, Lcom/google/api/i;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[B)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/O0;)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[BLcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

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
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

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

.method private removeAttachments(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setAttachments(ILcom/google/protobuf/Any;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/api/Distribution$Exemplar;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/google/api/Distribution$Exemplar;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private setValue(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/Distribution$Exemplar;->value_:D

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
    sget-object p1, Lcom/google/api/Distribution$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/api/Distribution$Exemplar;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/api/Distribution$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/protobuf/c1;

    .line 27
    .line 28
    sget-object p3, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Lcom/google/protobuf/c1;-><init>(Lcom/google/protobuf/i1;)V

    .line 31
    .line 32
    .line 33
    sput-object p1, Lcom/google/api/Distribution$Exemplar;->PARSER:Lcom/google/protobuf/e2;

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
    sget-object p1, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Lcom/google/api/i;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/api/Distribution$Exemplar;->access$4000()Lcom/google/api/Distribution$Exemplar;

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
    new-instance p1, Lcom/google/api/Distribution$Exemplar;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/google/api/Distribution$Exemplar;-><init>()V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_4
    const/4 p1, 0x5

    .line 63
    new-array p1, p1, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string p3, "bitField0_"

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    aput-object p3, p1, v0

    .line 69
    .line 70
    const-string p3, "value_"

    .line 71
    .line 72
    aput-object p3, p1, p2

    .line 73
    .line 74
    const-string p2, "timestamp_"

    .line 75
    .line 76
    const/4 p3, 0x2

    .line 77
    aput-object p2, p1, p3

    .line 78
    .line 79
    const-string p2, "attachments_"

    .line 80
    .line 81
    const/4 p3, 0x3

    .line 82
    aput-object p2, p1, p3

    .line 83
    .line 84
    const-class p2, Lcom/google/protobuf/Any;

    .line 85
    .line 86
    const/4 p3, 0x4

    .line 87
    aput-object p2, p1, p3

    .line 88
    .line 89
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0000\u0002\u1009\u0000\u0003\u001b"

    .line 90
    .line 91
    sget-object p3, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    .line 92
    .line 93
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/i1;->newMessageInfo(Lcom/google/protobuf/Q1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :pswitch_5
    const/4 p1, 0x0

    .line 99
    return-object p1

    .line 100
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
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

.method public getAttachments(I)Lcom/google/protobuf/Any;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/protobuf/Any;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAttachmentsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

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

.method public getAttachmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAttachmentsOrBuilder(I)Lcom/google/protobuf/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/protobuf/f;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAttachmentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/api/Distribution$Exemplar;->value_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public hasTimestamp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$Exemplar;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

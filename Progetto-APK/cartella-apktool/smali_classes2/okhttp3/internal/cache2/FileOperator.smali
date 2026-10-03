.class public final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1

    .line 1
    const-string v0, "fileChannel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final read(JLQ6/j;J)V
    .locals 9

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p4, v0

    .line 9
    .line 10
    if-ltz v2, :cond_1

    .line 11
    .line 12
    :goto_0
    cmp-long v2, p4, v0

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 17
    .line 18
    move-wide v4, p1

    .line 19
    move-wide v6, p4

    .line 20
    move-object v8, p3

    .line 21
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    add-long/2addr p1, v2

    .line 26
    sub-long/2addr p4, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final write(JLQ6/j;J)V
    .locals 14

    .line 1
    move-object/from16 v6, p3

    .line 2
    .line 3
    const-string v0, "source"

    .line 4
    .line 5
    invoke-static {v6, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v7, 0x0

    .line 9
    .line 10
    cmp-long v0, p4, v7

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, v6, LQ6/j;->H:J

    .line 15
    .line 16
    cmp-long v2, p4, v0

    .line 17
    .line 18
    if-gtz v2, :cond_1

    .line 19
    .line 20
    move-wide v9, p1

    .line 21
    move-wide/from16 v11, p4

    .line 22
    .line 23
    :goto_0
    cmp-long v0, v11, v7

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    move-object v13, p0

    .line 28
    iget-object v0, v13, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 29
    .line 30
    move-object/from16 v1, p3

    .line 31
    .line 32
    move-wide v2, v9

    .line 33
    move-wide v4, v11

    .line 34
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    add-long/2addr v9, v0

    .line 39
    sub-long/2addr v11, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v13, p0

    .line 42
    return-void

    .line 43
    :cond_1
    move-object v13, p0

    .line 44
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

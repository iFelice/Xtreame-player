.class public abstract Ln0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/g;


# instance fields
.field public b:Ln0/e;

.field public c:Ln0/e;

.field public d:Ln0/e;

.field public e:Ln0/e;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ln0/g;->a:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput-object v0, p0, Ln0/h;->f:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    iput-object v0, p0, Ln0/h;->g:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    sget-object v0, Ln0/e;->e:Ln0/e;

    .line 11
    .line 12
    iput-object v0, p0, Ln0/h;->d:Ln0/e;

    .line 13
    .line 14
    iput-object v0, p0, Ln0/h;->e:Ln0/e;

    .line 15
    .line 16
    iput-object v0, p0, Ln0/h;->b:Ln0/e;

    .line 17
    .line 18
    iput-object v0, p0, Ln0/h;->c:Ln0/e;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Ln0/g;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    iput-object v0, p0, Ln0/h;->g:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Ln0/h;->h:Z

    .line 7
    .line 8
    iput-object v0, p0, Ln0/h;->f:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    sget-object v0, Ln0/e;->e:Ln0/e;

    .line 11
    .line 12
    iput-object v0, p0, Ln0/h;->d:Ln0/e;

    .line 13
    .line 14
    iput-object v0, p0, Ln0/h;->e:Ln0/e;

    .line 15
    .line 16
    iput-object v0, p0, Ln0/h;->b:Ln0/e;

    .line 17
    .line 18
    iput-object v0, p0, Ln0/h;->c:Ln0/e;

    .line 19
    .line 20
    invoke-virtual {p0}, Ln0/h;->j()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln0/h;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ln0/h;->g:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    sget-object v1, Ln0/g;->a:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Ln0/h;->g:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    sget-object v1, Ln0/g;->a:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    iput-object v1, p0, Ln0/h;->g:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    return-object v0
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln0/h;->h:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ln0/h;->i()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final f(Ln0/e;)Ln0/e;
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/h;->d:Ln0/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ln0/h;->g(Ln0/e;)Ln0/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Ln0/h;->e:Ln0/e;

    .line 8
    .line 9
    invoke-virtual {p0}, Ln0/h;->isActive()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Ln0/h;->e:Ln0/e;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Ln0/e;->e:Ln0/e;

    .line 19
    .line 20
    :goto_0
    return-object p1
.end method

.method public final flush()V
    .locals 1

    .line 1
    sget-object v0, Ln0/g;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    iput-object v0, p0, Ln0/h;->g:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ln0/h;->h:Z

    .line 7
    .line 8
    iget-object v0, p0, Ln0/h;->d:Ln0/e;

    .line 9
    .line 10
    iput-object v0, p0, Ln0/h;->b:Ln0/e;

    .line 11
    .line 12
    iget-object v0, p0, Ln0/h;->e:Ln0/e;

    .line 13
    .line 14
    iput-object v0, p0, Ln0/h;->c:Ln0/e;

    .line 15
    .line 16
    invoke-virtual {p0}, Ln0/h;->h()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public abstract g(Ln0/e;)Ln0/e;
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public isActive()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln0/h;->e:Ln0/e;

    .line 2
    .line 3
    sget-object v1, Ln0/e;->e:Ln0/e;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public final k(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/h;->f:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Ln0/h;->f:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Ln0/h;->f:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Ln0/h;->f:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    iput-object p1, p0, Ln0/h;->g:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    return-object p1
.end method

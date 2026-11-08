.class public final Lu0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/x;


# instance fields
.field public final a:Lorg/chromium/net/CronetEngine;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lm2/l;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu0/c;->a:Lorg/chromium/net/CronetEngine;

    .line 5
    .line 6
    iput-object p2, p0, Lu0/c;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance p1, Lm2/l;

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    invoke-direct {p1, p2}, Lm2/l;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lu0/c;->c:Lm2/l;

    .line 15
    .line 16
    iput p2, p0, Lu0/c;->d:I

    .line 17
    .line 18
    const/16 p1, 0x1f40

    .line 19
    .line 20
    iput p1, p0, Lu0/c;->e:I

    .line 21
    .line 22
    iput p1, p0, Lu0/c;->f:I

    .line 23
    .line 24
    const p1, 0x8000

    .line 25
    .line 26
    .line 27
    iput p1, p0, Lu0/c;->g:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ls0/i;
    .locals 9

    .line 1
    iget-object v0, p0, Lu0/c;->a:Lorg/chromium/net/CronetEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lu0/e;

    .line 7
    .line 8
    iget-object v7, p0, Lu0/c;->c:Lm2/l;

    .line 9
    .line 10
    iget v8, p0, Lu0/c;->g:I

    .line 11
    .line 12
    iget v4, p0, Lu0/c;->d:I

    .line 13
    .line 14
    iget v5, p0, Lu0/c;->e:I

    .line 15
    .line 16
    iget v6, p0, Lu0/c;->f:I

    .line 17
    .line 18
    iget-object v2, p0, Lu0/c;->a:Lorg/chromium/net/CronetEngine;

    .line 19
    .line 20
    iget-object v3, p0, Lu0/c;->b:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    invoke-direct/range {v1 .. v8}, Lu0/e;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIILm2/l;I)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

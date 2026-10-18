.class public final Ls0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/x;


# instance fields
.field public final a:Landroid/net/http/HttpEngine;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lm2/l;

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/net/http/HttpEngine;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, LL1/d;->k(Ljava/lang/Object;)Landroid/net/http/HttpEngine;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ls0/C;->a:Landroid/net/http/HttpEngine;

    .line 12
    .line 13
    iput-object p2, p0, Ls0/C;->b:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    new-instance p1, Lm2/l;

    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    invoke-direct {p1, p2}, Lm2/l;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ls0/C;->c:Lm2/l;

    .line 22
    .line 23
    iput p2, p0, Ls0/C;->d:I

    .line 24
    .line 25
    const/16 p1, 0x1f40

    .line 26
    .line 27
    iput p1, p0, Ls0/C;->e:I

    .line 28
    .line 29
    iput p1, p0, Ls0/C;->f:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()Ls0/i;
    .locals 8

    .line 1
    new-instance v7, Ls0/H;

    .line 2
    .line 3
    iget-object v6, p0, Ls0/C;->c:Lm2/l;

    .line 4
    .line 5
    iget v3, p0, Ls0/C;->d:I

    .line 6
    .line 7
    iget v4, p0, Ls0/C;->e:I

    .line 8
    .line 9
    iget v5, p0, Ls0/C;->f:I

    .line 10
    .line 11
    iget-object v1, p0, Ls0/C;->a:Landroid/net/http/HttpEngine;

    .line 12
    .line 13
    iget-object v2, p0, Ls0/C;->b:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Ls0/H;-><init>(Landroid/net/http/HttpEngine;Ljava/util/concurrent/Executor;IIILm2/l;)V

    .line 17
    .line 18
    .line 19
    return-object v7
.end method

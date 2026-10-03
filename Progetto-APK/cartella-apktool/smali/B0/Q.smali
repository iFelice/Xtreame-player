.class public final synthetic LB0/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/B;


# instance fields
.field public final synthetic G:LB0/X;

.field public final synthetic H:LU0/B;


# direct methods
.method public synthetic constructor <init>(LB0/X;LB0/M;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/Q;->G:LB0/X;

    .line 5
    .line 6
    iput-object p2, p0, LB0/Q;->H:LU0/B;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(JJLm0/t;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1
    iget-object v0, p0, LB0/Q;->G:LB0/X;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LB0/Q;->H:LU0/B;

    .line 7
    .line 8
    move-wide v2, p1

    .line 9
    move-wide v4, p3

    .line 10
    move-object v6, p5

    .line 11
    move-object v7, p6

    .line 12
    invoke-interface/range {v1 .. v7}, LU0/B;->b(JJLm0/t;Landroid/media/MediaFormat;)V

    .line 13
    .line 14
    .line 15
    move-wide v1, p1

    .line 16
    move-wide v3, p3

    .line 17
    move-object v5, p5

    .line 18
    move-object v6, p6

    .line 19
    invoke-virtual/range {v0 .. v6}, LB0/X;->b(JJLm0/t;Landroid/media/MediaFormat;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

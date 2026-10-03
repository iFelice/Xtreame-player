.class public final synthetic LA0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/g0;


# instance fields
.field public final synthetic a:Lm0/v;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LA0/E;Lm0/v;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/i;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, LA0/i;->a:Lm0/v;

    .line 7
    .line 8
    iput-wide p3, p0, LA0/i;->b:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, LA0/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LA0/E;

    .line 4
    .line 5
    iget-object v1, v0, LA0/E;->H:LA0/K;

    .line 6
    .line 7
    iget-object v0, v0, LA0/E;->G:LF/i;

    .line 8
    .line 9
    iget-object v2, p0, LA0/i;->a:Lm0/v;

    .line 10
    .line 11
    iget-wide v3, p0, LA0/i;->b:J

    .line 12
    .line 13
    invoke-interface {v1, v0, v2, v3, v4}, LA0/K;->b(LF/i;Lm0/v;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

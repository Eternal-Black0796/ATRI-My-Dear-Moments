.class Lcom/ies_net/artemis/ArtemisVideoView$6;
.super Ljava/lang/Object;
.source "ArtemisVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ies_net/artemis/ArtemisVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisVideoView;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "w",
            "h"
        }
    .end annotation

    .line 492
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1, p3}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1002(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 493
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1, p4}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1102(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 494
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1200(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$000(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object p3, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p3}, Lcom/ies_net/artemis/ArtemisVideoView;->access$100(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p3

    if-ne p3, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 496
    :goto_1
    iget-object p3, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p3}, Lcom/ies_net/artemis/ArtemisVideoView;->access$700(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 497
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$900(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 498
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$900(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ies_net/artemis/ArtemisVideoView;->seekTo(I)V

    .line 500
    :cond_2
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->start()V

    .line 501
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 502
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 504
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 506
    :cond_3
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    :cond_4
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0, p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1802(Lcom/ies_net/artemis/ArtemisVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 515
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$700(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$200(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    .line 516
    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1200(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 517
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$700(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 518
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->resume()V

    goto :goto_0

    .line 520
    :cond_0
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1900(Lcom/ies_net/artemis/ArtemisVideoView;)V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 527
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1802(Lcom/ies_net/artemis/ArtemisVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 528
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 529
    :cond_0
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$200(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 530
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$6;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$2000(Lcom/ies_net/artemis/ArtemisVideoView;Z)V

    :cond_1
    return-void
.end method

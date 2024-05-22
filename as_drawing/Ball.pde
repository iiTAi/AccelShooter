/* 自機と敵が撃つ弾クラス */
class Ball {
    constructor(x, y, vx, vy, color) {
        this.x = x;  // x座標
        this.y = y;  // y座標
        this.vx = vx;  // x方向の速度
        this.vy = vy;  // y方向の速度
        this.color = color;  // 色
    }

    // 座標の更新
    update() {
        this.x += this.vx;
        this.y += this.vy;
    }

    // 描画
    draw() {
        fill(this.color);
        noStroke();
        rect(this.x - 12, this.y - 12, 25, 25);
    }
}